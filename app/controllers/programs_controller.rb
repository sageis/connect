class ProgramsController < ApplicationController
	def index
		@all_programs = Program.all
	end

	def search
		@all_programs = Program.all
		
		@program = Program.new
		@program.save


		@all_regions = Array.new
		#build region dropdown menu
		for program in Program.all
			if (program.region != nil)
				mini_array = Array.new
				mini_array << program.region
				mini_array << program.region
				if (@all_regions.index(mini_array) == nil)
					@all_regions << mini_array
				end
			end
		end
		@all_regions = @all_regions.sort { |a,b| a[0] <=> b[0] }

		#build profession dropdown menu
		user = User.find_by_id(session[:user_id])
		if (user == nil) then
			return
		end
		@user_professions = Array.new
		for profession in user.professions
			mini_array = Array.new
			mini_array << profession.title
			mini_array << profession.title
			@user_professions << mini_array
		end
		@user_professions = @user_professions.sort { |a,b| a[0] <=> b[0] }
		@size = @user_professions.length

		#ajax stuff to dynamically populate results of search bar
		@all_programs_ajax = Set.new
		if (params[:id] != nil) then
			@params_test = params[:id].downcase
	 		Program.all.each do |program| 
				if (/#{@params_test}/.match("#{program.title}".downcase) != nil) then 
					@all_programs_ajax.add(program) 
				end 
			end

		end


	end

	def analyze_filters
		@filter = Program.find_by_id(params[:id])
		#working
		@filter.region = params[:region_name]
		if (params[:paid] == false)
			@filter.paid = false
		else
			@filter.paid = true
		end
		#@filter.professions << Profession.find_by_title(params[:profession_name])
		@text = params[:profession_name]

		# #not working
		# if (params[:price] == nil)
		# 	#raise params.inspect
		# end
		@filter.price = params[:price]

		if (params[:housed] == false)
			#raise params.inspect
			@filter.housed = false
		else
			@filter.housed = true
		end


		Struct.new("RankedProgram", :value, :program)
		@all_programs = Program.all
		num_programs = @all_programs.size
		programs_list = Array.new
		index = 0
		for program in @all_programs
			if (program.due_date == nil) then
				next
			end
			value = 0
			if (@filter.paid == program.paid)
				value += 1
			end
			if (@filter.housed == program.housed)
				value += 1
			end
			# if (@filter.price >= program.price)
			# 	value += 1
			# end
			if (@filter.region == program.region)
				value += 1
			end
			
			for profession in program.professions
				for desired_profession in @filter.professions
					if (desired_profession.title == profession.title)
						value += 1
					end
				end
			end
			
			programs_list << Struct::RankedProgram.new(value, program)
			index += 1
		end

		@@ranked_list = programs_list.sort { |a,b| b.value <=> a.value }
		#@filter.destroy
		redirect_to(:controller => "programs", :action => "results")
		return

	end

	def select_attempts
		#<%= form.collection_select(:program, :program_id, @all_programs, :id, @all_regions) %>
	end

	def results
		@all_programs = Program.all
		index = 0
		@results = Array.new
		@user = User.find_by_id(session[:user_id])
		for result in @@ranked_list
			#assign variables @first thru @third to the corresponding career from rankedlist
			if (index == 0)
				@first = Program.find_by_id(result.program.id)
				#make sure this id isn't null
				if (session[:user_id] != nil) then
					@results << @first
				end
			elsif (index == 1)
				@second = Program.find_by_id(result.program.id)
				if (session[:user_id] != nil) then
					@results << @second
				end
			elsif (index == 2)
				@third = Program.find_by_id(result.program.id)
				if (session[:user_id] != nil) then
					@results << @third
				end
			elsif (index == 3) 
				break
			end
		  index += 1
		end
		#@user_programs = User.find_by_id(session[:user_id]).programs
	end

	#save programs to the user's list of programs
	def save
		@user = User.find_by_id(session[:user_id])
		if (@user == nil) then
			return
		end
		program = Program.find_by_id(params[:id])
		if (@user.programs.find_by_id(program.id) == nil) then
			@user.programs << program
		end
		redirect_to(:controller => "programs", :action => "results")
	end
end

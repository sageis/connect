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
				@all_regions << mini_array
			end
		end

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
		@size = @user_professions.length
	end

	def analyze_filters
		@filter = Program.find_by_id(params[:id])
		if (params[:price] == nil)
			raise params.inspect
		end
		@filter.price = params[:price]
		#redirect_to(:controller => "programs", :action => "results")
		if (params[:housed] == false)
			raise params.inspect
			@filter.housed = false
		else
			@filter.housed = true
		end
		@filter.region = params[:region]
		if (params[:paid] == false)
			@filter.paid = false
		else
			@filter.paid = true
		end
		# if (params[:professions] == nil)
		# 	@filter.professions

	end

	def select_attempts
		#<%= form.collection_select(:program, :program_id, @all_programs, :id, @all_regions) %>
	end

	def results
		@all_programs = Program.all
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

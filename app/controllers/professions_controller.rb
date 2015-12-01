class ProfessionsController < ApplicationController
	def index
		@all_professions = Profession.all
	end

	def quiz
		@all_professions = Profession.all
		@new_quiz = Quiz.new
		@new_quiz.save
	end

	def create 
		@new_quiz = Quiz.find_by_id(params[:id])
		if (@new_quiz.save) then
			redirect_to(:controller => "professions", :action => "index")
		else 
			redirect_to(:controller => "professions", :action => "index")
		end
	end

	#add the profession they clicked to their list of professions
	def add
		@user = User.find_by_id(session[:user_id])
		if (@user == nil) then
			return
		end
		profession = Profession.find_by_id(params[:id])
		if (@user.professions.find_by_id(profession.id) == nil) then
			@user.professions << profession
		end
		redirect_to(:controller => "professions", :action => "index")
	end

	def results
		index = 0
		@user = User.find_by_id(session[:user_id])
		for result in @@ranked_list
			#assign variables @first thru @fifth to the corresponding career from rankedlist
			if (index == 0)
				@first = Profession.find_by_id(result.profession.id)
				#make sure this id isn't null
				if (session[:user_id] != nil) then
					if (@user.professions.find_by_id(@first.id) == nil) then
						@user.professions << @first
					end
				end
			elsif (index == 1)
				@second = Profession.find_by_id(result.profession.id)
				if (session[:user_id] != nil) then
					if (@user.professions.find_by_id(@second.id) == nil) then
						@user.professions << @second
					end
				end
			elsif (index == 2)
				@third = Profession.find_by_id(result.profession.id)
				if (session[:user_id] != nil) then
					if (@user.professions.find_by_id(@third.id) == nil) then
						@user.professions << @third
					end
				end
			elsif (index == 3) 
				@fourth = Profession.find_by_id(result.profession.id)
				if (session[:user_id] != nil) then
					if (@user.professions.find_by_id(@fourth.id) == nil) then
						@user.professions << @fourth
					end
				end
			elsif (index == 4) 
				@fifth = Profession.find_by_id(result.profession.id)
				if (session[:user_id] != nil) then
					if (@user.professions.find_by_id(@fifth.id) == nil) then
						@user.professions << @fifth
					end
				end
			elsif (index == 5) 
				break
			end
		  index += 1
		end
		@user_professions = User.find_by_id(session[:user_id]).professions
	end

	def analyze_results
		# raise params.inspect

		@quiz_results = Quiz.find_by_id(params[:id])
		@curr_user = User.find_by_id(session[:user_id])
		@curr_user.quiz_id = @quiz_results.id
		if (params[:speaking] == "2.0") then
			@quiz_results.speaking = -1.0
		else 
			@quiz_results.speaking = params[:speaking]
		end

		if (params[:persuading] == "2.0") then
			@quiz_results.persuading = -1.0
		else 
			@quiz_results.persuading = params[:persuading]
		end

		if (params[:writing] == "2.0") then
			@quiz_results.writing = -1.0
		else 
			@quiz_results.writing = params[:writing]
		end

		if (params[:taking_initiative] == "2.0") then
			@quiz_results.taking_initiative = -1.0
		else 
			@quiz_results.taking_initiative = params[:taking_initiative]
		end

		if (params[:physical_activities] == "2.0") then
			@quiz_results.physical_activities = -1.0
		else 
			@quiz_results.physical_activities = params[:physical_activities]
		end

		if (params[:build] == "2.0") then
			@quiz_results.build = -1.0
		else 
			@quiz_results.build = params[:build]
		end

		if (params[:helping] == "2.0") then
			@quiz_results.helping = -1.0
		else 
			@quiz_results.helping = params[:helping]
		end

		if (params[:organizing] == "2.0") then
			@quiz_results.organizing = -1.0
		else 
			@quiz_results.organizing = params[:organizing]
		end

		if (params[:analyzing] == "2.0") then
			@quiz_results.analyzing = -1.0
		else 
			@quiz_results.analyzing = params[:analyzing]
		end

		if (params[:creating] == "2.0") then
			@quiz_results.creating = -1.0
		else 
			@quiz_results.creating = params[:creating]
		end

		if (params[:investigating] == "2.0") then
			@quiz_results.investigating = -1.0
		else 
			@quiz_results.investigating = params[:investigating]
		end

		if (params[:problem_solving] == "2.0") then
			@quiz_results.problem_solving = -1.0
		else 
			@quiz_results.problem_solving = params[:problem_solving]
		end

		if (params[:team_work] == "2.0") then
			@quiz_results.team_work = -1.0
		else 
			@quiz_results.team_work = params[:team_work]
		end
		
		
		#@quiz_results.persuading = params[:persuading]
		#@quiz_results.writing = params[:writing]
		#@quiz_results.taking_initiative = params[:taking_initiative]
		#@quiz_results.physical_activities = params[:physical_activities]
		#@quiz_results.build = params[:build]
		#@quiz_results.helping = params[:helping]
		#@quiz_results.organizing = params[:organizing]
		#@quiz_results.analyzing = params[:analyzing]
		#@quiz_results.creating = params[:creating]
		#@quiz_results.investigating = params[:investigating]
		#@quiz_results.problem_solving = params[:problem_solving]
		#@quiz_results.team_work = params[:team_work]
		@quiz_results.save

		Struct.new("RankedJob", :value, :profession)
		@all_professions = Profession.all
		num_professions = @all_professions.size
		professions_list = Array.new(num_professions)
		index = 0
		@real_results = Quiz.find_by_id(params[:id])
		for profession in @all_professions 
			result = Quiz.find_by_id(profession.quiz_id)

			value = 0
			value += (result.writing * @real_results.writing)
			value += (result.speaking * @real_results.speaking)
			value += (result.persuading * @quiz_results.persuading)
			value += (result.taking_initiative * @quiz_results.taking_initiative)
			value += (result.analyzing * @quiz_results.analyzing)
			value += (result.creating * @quiz_results.creating)
			value += (result.problem_solving * @quiz_results.problem_solving)
			value += (result.helping * @quiz_results.helping)
			value += (result.physical_activities * @quiz_results.physical_activities)
			value += (result.organizing * @quiz_results.organizing)
			value += (result.team_work * @quiz_results.team_work)
			value += (result.investigating * @quiz_results.investigating)
			value += (result.build * @quiz_results.build)
			professions_list[index] = Struct::RankedJob.new(value, profession)
			index += 1
		end

		@@ranked_list = professions_list.sort { |a,b| b.value <=> a.value }
		redirect_to(:controller => "professions", :action => "results")
	end
end

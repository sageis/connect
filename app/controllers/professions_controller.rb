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
		# raise params.inspect
		@new_quiz = Quiz.find_by_id(params[:id])
		#@new_quiz.writing = params[:writing][:writing]
		if (@new_quiz.save) then
			redirect_to(:controller => "professions", :action => "index")
		end

	end

	def results
		@all_professions = Profession.all
	end

	def analyze_results
		@all_professions = Profession.all
		@sage = User.find_by_first_name("Sage2")
		@quiz_results = Quiz.find_by_id(@sage.quiz_id)

		#algorithm implementation here

		#add professions to user

	end
end

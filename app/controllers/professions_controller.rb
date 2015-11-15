class ProfessionsController < ApplicationController
	def index
		@all_professions = Profession.all
	end

	def quiz
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

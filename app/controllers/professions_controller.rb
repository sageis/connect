class ProfessionsController < ApplicationController
	def index
		@all_professions = Profession.all
	end

	def quiz
		@all_professions = Profession.all

	end

	def analyze_results
		@all_professions = Profession.all
		var num_professions = @all_professions.size

		@sage = User.find_by_first_name("Sage2")
		@quiz_results = Quiz.find_by_id(@sage.quiz_id)


		@professions_list = Array.new(num_professions)
		RankedJob = Struct.new("RankedJob", :value, :profession)

		for index in 0..num_professions
			var result = @all_professions[index]
			value += (result.writing * @quiz_results.writing)
			value += (result.speaking * @quiz_results.speaking)
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
			value += (result.growth * @quiz_results.growth)
			value += (result.money * @quiz_results.money)
			value += (result.security * @quiz_results.security)

			professions_list[index] = new RankedJob(value, result)
		end

		professions_list.sort { |a,b| a.value <=> b.value }

		#add professions to user

	end
end

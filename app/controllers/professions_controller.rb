class ProfessionsController < ApplicationController
	def index
		@all_professions = Profession.all
	end

	def quiz
		@all_professions = Profession.all
	end
end

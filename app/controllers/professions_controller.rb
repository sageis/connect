class ProfessionsController < ApplicationController
  def index
  	def index
		@all_professions = Profession.all
	end
  end
end

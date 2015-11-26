class ProgramsController < ApplicationController
	def index
		@all_programs = Program.all
	end

	def search
		@all_programs = Program.all
		@program = Program.new
		#professions_list = Array.new(num_professions)
	end

end

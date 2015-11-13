class ProgramsController < ApplicationController
  def index
  	@all_programs = Program.all
  end
end

class ProgramsController < ApplicationController
	def index
		@all_programs = Program.all
	end

	def search
		@all_programs = Program.all
		@program = Program.new
		@all_regions = Array.new
		#build region dropdown menu
		for program in Program.all
			mini_array = Array.new
			mini_array << program.region
			mini_array << program.region
			@all_regions << mini_array
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
	end

	def select_attempts
		#<%= form.collection_select(:program, :program_id, @all_programs, :id, @all_regions) %>
	end
end

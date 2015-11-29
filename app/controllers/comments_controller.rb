class CommentsController < ApplicationController
	def new
		@users = User.all
		@program = Program.find(params[:id])
		@new_comment = Comment.new
		@new_comment.save

		#@new_comment.errors.clear
	end

	def create
		@new_comment = Comment.new
		@new_comment.comment = params[:comment][:comment]
		@program = Program.find(params[:program_id])
		@new_comment.program = @program
		@new_comment.user_id = session[:curr_login].id
		@new_comment.date_time = DateTime.now
		@Program = Program.find(params[:program_id])
		if @new_comment.save then
			redirect_to(:controller => "programs", :action => "index", 
						id: @program.user_id)
		else
			@new_comment = Comment.new
			@new_comment.save
			render(:action => :new, :id => params[:program_id])
		end
	end
end

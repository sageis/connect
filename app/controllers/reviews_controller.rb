class ReviewsController < ApplicationController
	def new
		@users = User.all
		@program = Program.find(params[:id])
		@new_review = Review.new
		@new_review.save

		#@new_review.errors.clear
	end

	def create
		@new_review = Review.new
		@new_review.review = params[:review][:review]
		@program = Program.find(params[:program_id])
		@new_review.program_id = @program.id
		@new_review.user_id = session[:user_id]
		@new_review.date_time = DateTime.now
		@Program = Program.find(params[:program_id])
		if @new_review.save then
			redirect_to(:controller => "programs", :action => "oneprogram", :id => @program.id)
		else
			@new_review = Review.new
			@new_review.save
			render(:action => :new, :id => params[:program_id])
		end
	end
end

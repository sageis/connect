class UsersController < ApplicationController
	def home	
		@all_users = User.all
	end

	def login
		reset_session
		@user = User.new
		@user.save
	end

	def post_login
		@user = User.find(params[:id])
		@curr_login = params[:user][:login]
		test = true
		# @user = User.find_by_login(@curr_login)
		#session[:user_id] = @user.id
		#redirect_to(:controller => "users", :action => "homepage", id: @user.id)
		while (test) do
			@user = User.find_by_login(@curr_login)
			if (@user == nil) then
				#the user doesn't exist, so make them try again
				test = false
				@user = User.new
				@user.save
				redirect_to(:controller => "users", :action => "login", 
							:error => "This login does not exist.")
				return
			else 
				session[:user_id] = @user.id
				@@curr_user = @user.id
				redirect_to(:controller => "users", :action => "homepage", id: @user.id)
				return
			# else
			# 	if (@user.last_name == nil) then
			# 		@user.destroy
			# 	else
			# 		if (@user.password == params[:user][:password]) then
			# 			session[:curr_login] = @user
			# 			redirect_to(:controller => "users", :action => "homepage", id: @user.id)
			# 			return
			# 		else
			# 			@user = User.new
			# 			@user.save
			# 			redirect_to(:controller => "users", :action => "login", :id => @user.id,
			# 						:error => "Incorrect password.")
			# 			return
			# 		end
			# 	end
			end
		end
		@error = true
		@user = User.new
		render(:action => :login, @user => User.new)
	end

	def logout
		reset_session
		@@curr_user = nil
		redirect_to("/users/login")
		return
	end

	def create
		@user = User.find(params[:id])
		@user.first_name = params[:user][:first_name]
		@user.last_name = params[:user][:last_name]
		if (params[:user][:password] != params[:user][:password1]) then
			@user = User.new
			@user.salt = rand()
			@user.save
			redirect_to(:controller => "users", :action => "new", 
						:error => "Your passwords do not match.")
			return
		end
		@user.password=(params[:user][:password])
		#check if that login is already taken
		if (User.find_by_login(params[:user][:login]) == nil) then
			@user.login = params[:user][:login]
			if (@user.save) then
				redirect_to(:controller => "photos", :action => "index", :id => @user.id)
				session[:curr_login] = @user
				return
			else
				render(:action => :new)
			end
		else
			@user = User.new
			@user.salt = rand()
			@user.save
			redirect_to(:controller => "users", :action => "new", 
						:error => "This login is already taken.")
		end

	end

	def homepage
		
	end
end

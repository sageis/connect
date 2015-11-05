class UsersController < ApplicationController
  def index
  	def index
		@all_users = User.all
	end
  end
end

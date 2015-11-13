class UsersController < ApplicationController
  def index
  	def index
			@all_users = User.all
		end
  end


  def login
  end
end

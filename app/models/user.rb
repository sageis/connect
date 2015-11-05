class User < ActiveRecord::Base
	has_many :reviews
	has_many :programs
	has_many :professions
end

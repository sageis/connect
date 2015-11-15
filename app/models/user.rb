class User < ActiveRecord::Base
	has_many :reviews
	has_many :professions
	has_many :programs
end

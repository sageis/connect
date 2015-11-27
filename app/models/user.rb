class User < ActiveRecord::Base
	has_many :reviews
	has_and_belongs_to_many :professions
	has_one :quiz
	has_and_belongs_to_many :programs
end

class Profession < ActiveRecord::Base
	has_and_belongs_to_many :users
	has_one :quiz
	has_and_belongs_to_many :programs
end

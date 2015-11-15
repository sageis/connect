class Profession < ActiveRecord::Base
	belongs_to :user
	has_one :quiz
	belongs_to :program
end

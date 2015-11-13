class Program < ActiveRecord::Base
	has_many :reviews
	belongs_to :user
	has_many :professions
end

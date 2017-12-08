class Student < ApplicationRecord
	belongs_to :course
	has_many :activities
	has_many :notes 
end

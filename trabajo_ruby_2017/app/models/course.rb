class Course < ApplicationRecord
	has_many :students
	has_many :activities
	has_and_belongs_to_many :users
end

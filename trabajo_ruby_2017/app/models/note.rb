class Note < ApplicationRecord
	belongs_to :activity
	belongs_to :students
end

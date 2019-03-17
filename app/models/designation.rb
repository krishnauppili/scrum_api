class Designation < ApplicationRecord
	#model associations
	has_many :employees,dependent: :destroy


	#validations
	validates_presence_of :name
end

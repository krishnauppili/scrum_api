class Employee < ApplicationRecord
	#model association
  	belongs_to :designation

  	#validations
	validates_presence_of :name
end

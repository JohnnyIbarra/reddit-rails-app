class Topic < ApplicationRecord
	belongs_to :sub
	# PLURAL
	has_many :comments

	# SINGULAR
	# has_one :comment
end


		#		 sub	
		#			|
		#		topics
		#			|
		#		comments



		

class Frienship < ActiveRecord::Base
	#include DRb::DRbUndumped
	establish_connection(:maindata)
	self.table_name = 'FRIENSHIP'
	belongs_to :user
	belongs_to :friend,  :class_name => 'User',:foreign_key => "USER_FRIEND"
	def guardar
		self.save()
	end
	
end

class Request < ActiveRecord::Base
	#include DRb::DRbUndumped
	establish_connection(:maindata)
	self.table_name = 'REQUEST'
	belongs_to :user,  :class_name => 'User',:foreign_key => "USER_ID_TO"
	belongs_to :friend,  :class_name => 'User',:foreign_key => "USER_ID_FROM"
	def guardar
		self.save()
	end
	
end

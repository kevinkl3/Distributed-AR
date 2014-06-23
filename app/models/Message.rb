class Message < ActiveRecord::Base
	#include DRb::DRbUndumped
	establish_connection(:maindata)
	self.table_name = 'MESSAGE'
	belongs_to :frienship

	def guardar
		self.save()
	end
	
end

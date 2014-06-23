class Message < ActiveRecord::Base
	include DRb::DRbUndumped
	
	self.table_name = 'MESSAGE'

	def guardar
		self.save()
	end
	
end

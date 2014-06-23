class Frienship < ActiveRecord::Base
	include DRb::DRbUndumped
	
	self.table_name = 'FRIENSHIP'

	def guardar
		self.save()
	end
	
end

class Request < ActiveRecord::Base
	include DRb::DRbUndumped
	
	self.table_name = 'REQUEST'

	def guardar
		self.save()
	end
	
end

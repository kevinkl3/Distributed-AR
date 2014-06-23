class User < ActiveRecord::Base
	include DRb::DRbUndumped
	
	self.table_name = 'USER'

	def guardar
		self.save()
	end

end

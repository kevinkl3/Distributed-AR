class Like_Post < ActiveRecord::Base
	include DRb::DRbUndumped
	
	self.table_name = 'LIKE_POST'

	def guardar
		self.save()
	end
	
end

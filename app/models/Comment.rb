class Comment < ActiveRecord::Base
	include DRb::DRbUndumped
	
	self.table_name = 'COMMENT'

	def guardar
		self.save()
	end
	
end

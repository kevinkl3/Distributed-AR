class Like_Comment < ActiveRecord::Base
	include DRb::DRbUndumped
	
	self.table_name = 'LIKE_COMMENT'

	def guardar
		self.save()
	end
	
end

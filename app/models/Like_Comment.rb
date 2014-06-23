class Like_Comment < ActiveRecord::Base
	include DRb::DRbUndumped
	#establish_connection(:maindata)
	self.table_name = 'LIKE_COMMENT'
	belongs_to :user
	belongs_to :comment

	def guardar
		self.save()
	end
	
end

class LikePost < ActiveRecord::Base
	include DRb::DRbUndumped
	#establish_connection(:maindata)
	self.table_name = 'LIKE_POST'
	belongs_to :user
	belongs_to :post

	def guardar
		self.save()
	end
	
end

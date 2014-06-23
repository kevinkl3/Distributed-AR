class Comment < ActiveRecord::Base
	include DRb::DRbUndumped
	#establish_connection(:maindata)
	self.table_name = 'COMMENT'
	has_many :like_comments
	belongs_to :user
	belongs_to :post

	def guardar
		self.save()
	end
	
end

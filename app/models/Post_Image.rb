class Post_Image < ActiveRecord::Base
	include DRb::DRbUndumped
	
	self.table_name = 'POST_IMAGE'

	def guardar
		self.save()
	end
	
end

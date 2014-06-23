class Post < ActiveRecord::Base
	include DRb::DRbUndumped
	#establish_connection(:maindata)
	self.table_name = 'POST'
	has_many :comments
	has_many :like_posts
	belongs_to :user

	def guardar
		self.save()
	end
	
end

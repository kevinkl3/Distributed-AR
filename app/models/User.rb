class User < ActiveRecord::Base
	#include DRb::DRbUndumped
	establish_connection(:maindata)
	self.table_name = 'USER'
	has_many :posts
	has_many :comments
	has_many :like_posts
	has_many :like_comments
	#has_and_belongs_to_many :amigos, :class_name => "User",:join_table => "FRIENSHIP" ,:foreign_key => "USER_ID"
	has_many :frienships
	has_many :friends, :through => :frienships
	#has_many :inverse_frienships, :class_name => "Frienship", :foreign_key => "USER_FRIEND"
	#has_many :inverse_friends, :through => :inverse_frienships, :source => :user
  	#has_many :child_links, :class_name => 'ProductLink', :foreign_key => :child_product_id
	#has_and_belongs_to_many :requests
	has_many :requests,:foreign_key => "USER_ID_TO"
	def guardar
		self.save()
	end

end

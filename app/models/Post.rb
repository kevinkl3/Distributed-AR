class Post < ActiveRecord::Base
	include DRb::DRbUndumped
	
	self.table_name = 'POST'
end

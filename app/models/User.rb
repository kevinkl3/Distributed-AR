class User < ActiveRecord::Base
	include DRb::DRbUndumped
	
	self.table_name = 'USER'
end

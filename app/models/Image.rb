class Image < ActiveRecord::Base
	include DRb::DRbUndumped
	
	self.table_name = 'IMAGE'

	def guardar
		self.save()
	end
	
end

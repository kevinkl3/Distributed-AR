require 'drb/drb'

# The URI to connect to
#USER_URI="druby://198.199.114.228:8887"
#Skels Ports
# User: 8887
# Post: 8888
#MAIN_HOST = '172.16.30.214'
#NODE_HOSTS = ['172.16.30.214','172.16.30.158','172.16.26.248']
#HOST = 'localhost'
#USER_URI ="druby://#{self.HOST}:8887"
#POST_URI ="druby://#{self.HOST}:8888"
#COMMENT_URI ="druby://#{self.HOST}:8889"
#MESSAGE_URI ="druby://#{self.HOST}:8890"
#REQUEST_URI ="druby://#{self.HOST}:8891"
#FRIENSHIP_URI ="druby://#{self.HOST}:8892"
#LIKE_COMMENT_URI ="druby://#{self.HOST}:8893"
#LIKE_POST_URI ="druby://#{self.HOST}:8894"
# Start a local DRbServer to handle callbacks.
#
# Not necessary for this small example, but will be required
# as soon as we pass a non-marshallable object as an argument
# to a dRuby call.
DRb.start_service


#To setup all Skells
#Post = DRbObject.new_with_uri(POST_URI)
#User = DRbObject.new_with_uri(USER_URI)
#Comment = DRbObject.new_with_uri(COMMENT_URI)
#Message = DRbObject.new_with_uri(MESSAGE_URI)
#Request = DRbObject.new_with_uri(REQUEST_URI)
#Frienship = DRbObject.new_with_uri(FRIENSHIP_URI)
#LikeComment = DRbObject.new_with_uri(LIKE_COMMENT_URI)
#LikePost = DRbObject.new_with_uri(LIKE_POST_URI)

class LB
	self.MAIN_HOST = '172.16.30.214'
	self.NODE_HOSTS = ['172.16.30.214','172.16.30.158','172.16.26.248']
	self.HOST
	self.ri = 0

	def self.nextHost
		if ri >= NODE_HOSTS.count
			ri = 0;
		end
		self.HOST = NODE_HOSTS[ri]
		ri++;
	end

	def self.nextPostNode
		POST_URI ="druby://#{self.HOST}:8888"
		Post = DRbObject.new_with_uri(POST_URI)
		return Post
	end

	def self.nextUserNode
		USER_URI ="druby://#{self.HOST}:8887"
		User = DRbObject.new_with_uri(USER_URI)
		return User
	end

	def self.nextCommentNode
		COMMENT_URI ="druby://#{self.HOST}:8889"
		Comment = DRbObject.new_with_uri(COMMENT_URI)
		return Comment
	end

	def self.nextMessageNode
		MESSAGE_URI ="druby://#{self.HOST}:8890"
		Message = DRbObject.new_with_uri(MESSAGE_URI)
		return Message
	end

	def self.nextRequestNode
		REQUEST_URI ="druby://#{self.HOST}:8891"
		Request = DRbObject.new_with_uri(REQUEST_URI)
		return Request
	end

	def self.nextFrienshipNode
		FRIENSHIP_URI ="druby://#{self.HOST}:8892"
		Frienship = DRbObject.new_with_uri(FRIENSHIP_URI)
		return Frienship
	end

	def self.nextLikeComment
		LIKE_COMMENT_URI ="druby://#{self.HOST}:8893"
		LikeComment = DRbObject.new_with_uri(LIKE_COMMENT_URI)
		return LikeComment
	end

	def self.nextLikePostNode
		LIKE_POST_URI ="druby://#{self.HOST}:8894"
		LikePost = DRbObject.new_with_uri(LIKE_POST_URI)
		return LikePost
	end


	#MAIN NODE FOR UPDATES AND INSERTS
	
	def self.User
		return RbObject.new_with_uri("druby://#{self.MAIN_HOST}:8887")
	end

	def self.Post
		return RbObject.new_with_uri("druby://#{self.MAIN_HOST}:8888")
	end

	def self.Comment
		return RbObject.new_with_uri("druby://#{self.MAIN_HOST}:8889")
	end

	def self.Message
		return RbObject.new_with_uri("druby://#{self.MAIN_HOST}:8890")
	end

	def self.Request
		return RbObject.new_with_uri("druby://#{self.MAIN_HOST}:8891")
	end

	def self.Frienship
		return RbObject.new_with_uri("druby://#{self.MAIN_HOST}:8892")
	end

	def self.LikeComment
		return RbObject.new_with_uri("druby://#{self.MAIN_HOST}:8893")
	end

	def self.LikePost
		return RbObject.new_with_uri("druby://#{self.MAIN_HOST}:8894")
	end

end
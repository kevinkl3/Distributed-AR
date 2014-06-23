require 'drb/drb'

# The URI to connect to
#USER_URI="druby://198.199.114.228:8887"
USER_URI="druby://localhost:8887"
POST_URI="druby://localhost:8888"

# Start a local DRbServer to handle callbacks.
#
# Not necessary for this small example, but will be required
# as soon as we pass a non-marshallable object as an argument
# to a dRuby call.
DRb.start_service

user = DRbObject.new_with_uri(USER_URI)
post = DRbObject.new_with_uri(POST_URI)
puts server.all

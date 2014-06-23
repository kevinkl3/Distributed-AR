require 'drb/drb'

# The URI to connect to
#USER_URI="druby://198.199.114.228:8887"
#Skels Ports
# User: 8887
# Post: 8888
USER_URI="druby://localhost:8887"
POST_URI="druby://localhost:8888"


# Start a local DRbServer to handle callbacks.
#
# Not necessary for this small example, but will be required
# as soon as we pass a non-marshallable object as an argument
# to a dRuby call.
DRb.start_service


#To setup all Skells
Dir.glob('./client/*').each do |folder|
  Dir.glob(folder +"/*.rb").each do |file|
    require file
    puts "done requiring " + file
  end
end


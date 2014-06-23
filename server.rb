require 'drb/drb'
require 'active_record'
gem 'mysql2'

# The URI for the server to connect to
USER_URI="druby://:8887"
POST_URI="druby://:8888"


Dir.glob('./app/*').each do |folder|
  Dir.glob(folder +"/*.rb").each do |file|
    require file
    puts "done requiring " + file
  end
end

#conexion con base de datos
ActiveRecord::Base.establish_connection(
  :adapter => 'mysql2',
  :host => 'localhost',
  :port => 3306,
  :database => 'RMI',
  :username => 'root',
  :password => ''
)


# The object that handles requests on the server
#FRONT_OBJECT=MyServer.new
$SAFE = 1   # disable eval() and friends

DRb.start_service(USER_URI, User)
DRb.start_service(POST_URI, Post)
# Wait for the drb server thread to finish before exiting.
DRb.thread.join

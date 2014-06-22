require 'drb/drb'
require 'active_record'
gem 'mysql2'

# The URI for the server to connect to
MY_URI="druby://localhost:8887"


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

DRb.start_service(MY_URI, User)
# Wait for the drb server thread to finish before exiting.
DRb.thread.join

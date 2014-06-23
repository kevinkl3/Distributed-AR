require 'drb/drb'
require 'active_record'
gem 'mysql2'

# The URI for the server to connect to
HOST = ''
USER_URI ="druby://#{HOST}:8887"
POST_URI ="druby://#{HOST}:8888"
COMMENT_URI ="druby://#{HOST}:8889"
MESSAGE_URI ="druby://#{HOST}:8890"
REQUEST_URI ="druby://#{HOST}:8891"
FRIENSHIP_URI ="druby://#{HOST}:8892"
LIKE_COMMENT_URI ="druby://#{HOST}:8893"
LIKE_POST_URI ="druby://#{HOST}:8894"


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
DRb.start_service(COMMENT_URI, Comment)
DRb.start_service(MESSAGE_URI, Message)
DRb.start_service(REQUEST_URI, Request)
DRb.start_service(FRIENSHIP_URI, Frienship)
DRb.start_service(LIKE_POST_URI, LikePost)
DRb.start_service(LIKE_COMMENT_URI, LikeComment)
# Wait for the drb server thread to finish before exiting.
DRb.thread.join

ENV['SINATRA_ENV'] ||= "development"

# require 'bundler/setup'
# Bundler.require(:default, ENV['SINATRA_ENV'])

# ActiveRecord::Base.establish_connection(
#   :adapter => "postgresql",
#   :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
# )

# require './app/controllers/application_controller'
# require_all 'app'

 require 'bundler/setup'
 Bundler.require(:default, ENV['SINATRA_ENV'])

configure :development do
  db = URI.parse(ENV['DATABASE_URL'] || 'postgres://localhost/investy')

  ActiveRecord::Base.establish_connection(
    :adapter  => 'postgresql',
    :host     => db.host,
    :username => db.user,
    :password => db.password,
    :database => db.path[1..-1],
    :encoding => 'utf8'
  )
 end

require './app/controllers/application_controller'
require_all 'app'
source 'http://rubygems.org'

gem 'sinatra'
gem 'activerecord', '~> 4.2', '>= 4.2.6', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'rake'
gem 'require_all'
gem 'thin'
gem 'shotgun'
gem 'bcrypt'
gem 'tux'
gem 'foreman'
gem 'sinatra-flash', '~> 0.3.0'
gem 'yard'
gem 'bigdecimal', '1.3.5'
gem 'ruby'

group :production do
  gem 'pg', '~> 0.21.0'
end

group :test, :development do
  gem "pry"
  gem 'sqlite3', '~> 1.3.6'
end


group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'rack-test'
  gem 'database_cleaner'
end

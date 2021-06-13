source 'http://rubygems.org'

gem 'sinatra'
gem 'activerecord', '~> 4.2', '>= 4.2.6', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'rake'
gem 'require_all'
gem "pg", "~> 0.21"
gem 'thin'
gem 'shotgun'
gem 'bcrypt'
gem 'tux'
gem 'slim'
gem 'sinatra-flash', '~> 0.3.0'

group :test, :development do
  gem "pry"
  gem 'sqlite3', '~> 1.3.6'
end


group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'rack-test'
  gem 'database_cleaner'
  gem 'factory_bot'
  gem 'simplecov', require: false
  gem 'simplecov-shields-badge', require: false
end

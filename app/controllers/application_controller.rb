require './config/environment'
require 'sinatra/flash'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "investy_app_secret"
    register Sinatra::Flash
  end

  get "/" do
    erb :welcome
  end

  # keep the code dry
  helpers do

    def is_logged_in?
      !!session[:user_id]
    end

    def current_user
      @current_user ||= User.find(session[:user_id]) if is_logged_in?
    end

    def validation
      redirect '/' if !is_logged_in?
    end
  end

end

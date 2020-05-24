class UserController < ApplicationController

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
        enable :sessions
        set :session_secret, "investy_app_secret"

    end

end
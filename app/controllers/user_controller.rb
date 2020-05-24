class UserController < ApplicationController

    #new user signup
    get '/signup' do
        if !session[:user_id]
            erb :'users/new'
        else
            redirect '/investments'
        end
    end

    post '/users' do
        user = User.new(name: params[:name], email: params[:email], params[:password])

        
        erb:
    end

    # login user

    # logout user

    # update user

    # delete user
end
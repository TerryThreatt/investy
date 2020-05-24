class UserController < ApplicationController

    #new user signup
    get '/signup' do
        if !session[:user_id]
            erb :'users/new'
        else
            redirect to '/investments'
        end
    end

    post '/users' do
        user = User.new(name: params[:name], email: params[:email], password: params[:password])
        if user.save
            session[:user_id] = user.id
            redirect to '/investments'
        else
            erb :'/users/failure'
        end
    end

    # login user

    # logout user

    # update user

    # delete user
end
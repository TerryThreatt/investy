class UserController < ApplicationController

    #new user signup
    get "/signup" do
        if !session[:user_id]
            erb :"users/signup"
        else
            redirect to "/investments"
        end
    end

    post "/signup" do
        user = User.new(name: params[:name], email: params[:email], password: params[:password])
        if user.save
            session[:user_id] = user.id
            # flash[:signup_success] = "Hi #{user.name}, you successfully signed up!"
            redirect to "/login"
        else
            # flash[:signup_failure] = "Your sign-up failed"
            erb :"/users/failure"
        end
    end

    # login user
    get "/login" do
        if !session[:user_id]
            erb :"users/login"
        else
            redirect to "/investments"
        end
    end

    post "/login" do
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect to "/investments"
        else
            redirect to "/login"
        end
    end

    # logout user
    get "/logout" do
        session[:user_id] != nil
        session.destroy
        redirect to "/"
    end
    # update user
    get "/account" do
        validation
        @user = current_user
        erb :"/users/account"
      end

      get "/account/edit" do
        validation
        @user = current_user
        erb :"users/edit"
      end

      patch '/account/edit' do
        @user = current_user
        @user.name = params[:first_name]
        @user.email = params[:email]
        @user.password = params[:password]
        @user.save
        redirect '/account'
      end

end
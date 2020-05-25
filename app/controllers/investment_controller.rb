class InvestmentController < ApplicationController

    # create investments
    get "/investments/new" do
        redirect "/" if !is_logged_in?
        erb :"/investments/new"
    end

    post "/investments" do
        user = current_user
        @investment = user.investments.new(params)
        if @investment.save
            redirect to "/investments"
        else
            erb :"/investments/new"
        end
    end

    # read investments
    get "/investments" do
        user = current_user
        @investments = user.investments.all

        erb :"/investments/index"
    end

    # update investments

    # delete investments

end
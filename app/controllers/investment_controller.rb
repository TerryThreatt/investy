class InvestmentController < ApplicationController

    get "/investments/new" do
        validation
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

    get "/investments" do
        validation
        user = current_user
        @investments = user.investments.all

        erb :"/investments/index"
    end

    get "/investments/:id" do
        validation
        @investment = current_user.investments.find(params[:id])
        if @investment
            erb :"investments/show"
        else
            redirect to "/investments"
        end
    end

    get "/investments/:id/edit" do
        validation
        @investment = current_user.investments.find(params[:id])
        if @investment
            erb :"investments/edit"
        else
            redirect to "/investments"
        end
    end

    patch "/investments/:id/edit" do
        validation
        @investment = current_user.investments.find(params[:id])
        @investment.name = params[:name]
        @investment.date = params[:date]
        @investment.amount = params[:amount]
        @investment.kind = params[:kind]
        @investment.description = params[:description]
        if @investment.save
          redirect to "/investments/#{params[:id]}"
        else
        #   flash[:danger] = "Please try again."
          redirect to "/investments/#{params[:id]}/edit"
        end
      end

    delete "/investments/:id/delete" do
        current_user.investments.find(params[:id]).delete
        redirect to "/investments"
    end

end
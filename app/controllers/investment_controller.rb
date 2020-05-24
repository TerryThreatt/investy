class InvestmentController < ApplicationController

    get '/investments' do
        @investments = Investment.all

        erb :'/investments/index'
    end

end
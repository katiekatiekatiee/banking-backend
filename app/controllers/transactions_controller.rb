class TransactionsController < ApplicationController

    def index
        transactions = Transaction.all 

    end

    def create
        transaction = Transaction.new
    end

    def show
    end

    def destroy
    end


end

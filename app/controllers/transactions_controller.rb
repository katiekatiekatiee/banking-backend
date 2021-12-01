class TransactionsController < ApplicationController

    def index
        transactions = Transaction.all 

    end

    def create
        transaction = Transaction.new
    end

    def show
        transaction = Transaction.find(params[:id])
    end

    def destroy
    end

    private

    def transaction_params
        params.require(:transaction).permit(:date, :amount, :goal_id)
    end

end

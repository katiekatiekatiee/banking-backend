class TransactionsController < ApplicationController

    def index
        transactions = Transaction.all 
        render json: transactions
    end

    def create
        transaction = Transaction.new(transaction_params)

        if transaction.save
            render json: transaction
        else 
            render json: {error: "Could not save transaction data."}
        end
    end

    # def show
    #     transaction = Transaction.find(params[:id])
    #     render json: transaction.to_json(except: [:created_at, :updated_at])
    # end

    def destroy
        transaction = Transaction.find(params[:id])
        transaction.destroy
        render json: {message: "Transaction has been removed."}
    end

    private

    def transaction_params
        params.require(:transaction).permit(:date, :amount, :goal_id)
    end

end

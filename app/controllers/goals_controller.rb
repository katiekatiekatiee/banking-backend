class GoalsController < ApplicationController

    def index
        goals = Goal.all
        render json: goals
    end

    def create
        goal = Goal.create(goal_params)

        if goal.save
            render json: goal
        else 
            render json: {error: "Could not save"}
        end
    end

    def show
        goal = Goal.find(params[:id])
        render json: goal
    end

    private

    def goal_params
        params.require(:goal).permit(:name)
    end

end

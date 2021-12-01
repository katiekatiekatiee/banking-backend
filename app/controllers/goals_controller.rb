class GoalsController < ApplicationController

    def index
        goals = Goal.all
    end

    def create
        goal = Goal.new
    end

    def show
        goal = Goal.find(params[:id])
    end

    private

    def goal_params
        params.require(:goal).permit(:name)
    end

end

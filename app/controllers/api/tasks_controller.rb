module Api
  class TasksController < ApplicationController
    before_action :authenticate_user, only: [:destroy]

    def index
      tasks = Task.all
      render json: tasks, status: :ok
    end

    def show
      task = Task.find(params[:id])
      render json: task, stauts: :ok
    end

    def destroy
      task = Task.find(params[:id])
      if task.destroy
        render json: {}, status: :ok
      else
        render json: {}, status: 401
      end
    end
  end
end
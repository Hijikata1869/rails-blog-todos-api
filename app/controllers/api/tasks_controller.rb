module Api
  class TasksController < ApplicationController
    before_action :authenticate_user, only: [:create, :destroy, :update]

    def index
      tasks = Task.all
      render json: tasks, status: :ok
    end

    def create 
      task = Task.new(task_params)
      if task.save
        render json: {}, status: :ok
      else
        render json: {}, status: 422
      end
    end

    def show
      task = Task.find(params[:id])
      render json: task, stauts: :ok
    end

    def update
      task = Task.find(params[:id])
      if task.update(task_params)
        render json: {}, status: :ok
      else
        render json: {}, status: 422
      end
    end

    def destroy
      task = Task.find(params[:id])
      if task.destroy
        render json: {}, status: :ok
      else
        render json: {}, status: 401
      end
    end

    private
    def task_params
      params.require(:task).permit(:title)
    end

  end
end
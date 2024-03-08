module Api
  class TasksController < ApplicationController
    before_action :authenticate_user, only: [:create, :destroy]

    def index
      tasks = Task.all
      render json: tasks, status: :ok
    end

    def create 
      task = Task.new(task_params)
      if task.create
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
      task = Taks.find(params[:id])
      if task.update(title: params[:title])
        render json: {}, status: :ok
      else
        render json: {}, stauts: 422
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
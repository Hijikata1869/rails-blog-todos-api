module Api
  class TasksController < ApplicationController
    def index
      tasks = Task.all
      render json: tasks, status: :ok
    end

    def show
      task = Task.find(params[:id])
      render json: task, stauts: :ok
    end
  end
end
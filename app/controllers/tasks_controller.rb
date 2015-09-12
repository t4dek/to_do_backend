class TasksController < ApplicationController
  def index
    tasks = Task.where(list_id: params[:list_id])
    render json: tasks
  end
end

class TasksController < ApplicationController
  def index
    tasks = Task.where(list_id: params[:list_id])
    render json: tasks
  end
  
  def create
    task = Task.create(task_params)
    render json: task
  end
  
  def update
    task = Task.find(params[:id]).update(task_params)
    render json: task
  end
  
  def delete
    task = Task.find(params[:id]).delete
    render json: taks
  end
  
  private
    def task_params
      params.require(:task).permit(:title, :completed)
    end
end

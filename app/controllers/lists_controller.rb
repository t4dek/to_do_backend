class ListsController < ApplicationController
  def index
    lists = List.all
    render json: lists
  end
  
  def create
    list = List.create(list_params)
    render json: list
  end
  
  private
    def list_params
      params.require(:list).permit(:title, :completed)
    end
end

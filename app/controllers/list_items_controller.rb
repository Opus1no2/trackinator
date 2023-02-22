class ListItemsController < ApplicationController
  before_action :authenticate_user!

  def index
    list_items
  end

  def create
    list_items.create!(description: params[:description])
    redirect_to list_list_items_path
  end

  def update
    update_params = ListUpdateService.call(params)

    list_items.find(params[:id]).update(update_params)
    redirect_to list_list_items_path
  end

  def destroy
    list_itmes.find(params[:id]).destroy
    redirect_to todo_list_todos_path
  end

  private

  def current_list
    current_user.lists.find(params[:list_id])
  end

  def list_items
    @list_items = current_list.list_items.order(created_at: :desc)
  end
end

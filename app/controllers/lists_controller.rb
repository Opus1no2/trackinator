class ListsController < ApplicationController
  before_action :authenticate_user!

  def create
    list = current_user.lists.create!(params.require(:list).permit(:title))
    redirect_to list_list_items_path(list)
  end
end

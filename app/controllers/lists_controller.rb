# frozen_string_literal: true

class ListsController < ApplicationController
  before_action :authenticate_user!

  def create
    list = current_user.lists.create!(params.require(:list).permit(:title))
    redirect_to list_list_items_path(list)
  end

  def destroy
    default_list = current_user.lists.first
    current_user.lists.find(params[:id]).destroy unless params[:id] == default_list.id
    redirect_to list_list_items_path(default_list)
  end
end

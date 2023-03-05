# frozen_string_literal: true

class ListItemsController < ApplicationController
  before_action :authenticate_user!

  def index
    @view = list_view
  end

  def create
    list_view.list_items.create!(description: params[:description])
    redirect_to list_list_items_path
  end

  def update
    update_params = ListUpdateService.call(params)

    list_view.list_items.find(params[:id]).update(update_params)
    redirect_to list_list_items_path
  end

  def show
    @list_item = ListItem.find(params[:id])
  end

  def destroy
    list_view.list_items.find(params[:id]).destroy
    redirect_to list_list_items_path
  end

  def list_view
    ListViewFacade.new(current_user, params)
  end
end

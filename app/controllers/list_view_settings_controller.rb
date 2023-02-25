# frozen_string_literal: true

class ListViewSettingsController < ApplicationController
  before_action :authenticate_user!

  def update
    list_settings = current_user.lists
                                .find(params[:list_id])
                                .list_view_settings
                                .find(params[:id])

    list_settings.update(show_complete: !list_settings.show_complete)

    redirect_to list_list_items_path
  end
end

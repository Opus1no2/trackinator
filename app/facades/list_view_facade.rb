# frozen_string_literal: true

class ListViewFacade
  attr_reader :current_user, :params

  def initialize(current_user, params)
    @params = params
    @current_user = current_user
  end

  def lists
    @lists = current_user.lists.map do |list|
      {
        list:,
        item_count: list_items(list).count
      }
    end
  end

  def current_list
    @current_list = current_user.lists.find(params[:list_id])
  end

  def list_settings
    @list_settings = current_list.list_view_settings.first.id
  end

  def list_items(list = current_list)
    @list_items = if list.list_view_settings.first.show_complete
                    list.list_items.most_recent_first
                  else
                    list.list_items.in_progress
                  end
  end
end

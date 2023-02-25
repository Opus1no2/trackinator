class ListViewFacade
  attr_reader :current_user, :lists,
    :current_list, :list_items, :params

  def initialize(current_user, params)
    @params = params
    @current_user = current_user
  end

  def lists
    @lists = current_user.lists.map do |list|
      {
        list: list,
        item_count: list.list_items.count
      }
    end
  end

  def current_list
    current_user.lists.find(params[:list_id])
  end

  def list_items
    @list_items = current_list.list_items.order(created_at: :desc)
  end
end

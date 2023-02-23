class ListViewFacade
  attr_reader :current_user, :lists,
    :current_list, :list_items, :params

  def initialize(current_user, params)
    @params = params
    @current_user = current_user
  end

  def lists
    @lists = current_user.lists
  end

  def current_list
    lists.find(params[:list_id])
  end

  def list_items
    @list_items = current_list.list_items.order(created_at: :desc)
  end
end
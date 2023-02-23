class ListsController < ApplicationController
  before_action :authenticate_user!

  def create
    current_user.lists.create!(params.require(:list).permit(:title))
  end
end

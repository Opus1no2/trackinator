class ListItem < ApplicationRecord
  belongs_to :list

  before_create :default_description

  def default_description
    self.description ||= "You new list item"
  end
end

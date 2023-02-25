class ListItem < ApplicationRecord
  belongs_to :list

  before_create :default_description

  scope :most_recent_first, -> { order(created_at: :desc) }
  scope :completed, -> { where.not(completed_at: nil).most_recent_first }
  scope :in_progress, -> { where(completed_at: nil).most_recent_first }

  def default_description
    self.description ||= "You new list item"
  end
end

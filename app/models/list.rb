class List < ApplicationRecord
  belongs_to :user

  has_many :list_items, dependent: :destroy
  has_many :list_view_settings, dependent: :destroy

  after_create :create_list_settings

  def create_list_settings
    list_view_settings.create!
  end
end

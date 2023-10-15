# frozen_string_literal: true

class List < ApplicationRecord
  belongs_to :user

  has_many :list_items, dependent: :destroy
  has_many :list_view_settings, dependent: :destroy

  after_create :create_list_settings, :create_list_items

  def create_list_items
    list_items.create!(description: 'My First Item')
  end

  def create_list_settings
    list_view_settings.create!
  end
end

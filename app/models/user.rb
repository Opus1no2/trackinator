# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :lists, dependent: :destroy
  has_many :list_items, through: :lists

  after_create :create_default_list

  def create_default_list
    list = lists.create!(title: 'Daily')
    list.list_items.create!(description: 'My First Item!')
  end
end

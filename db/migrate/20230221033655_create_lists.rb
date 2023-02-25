# frozen_string_literal: true

class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.belongs_to :user
      t.string :title
      t.timestamps
    end
  end
end

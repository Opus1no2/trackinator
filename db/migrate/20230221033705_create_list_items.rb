class CreateListItems < ActiveRecord::Migration[7.0]
  def change
    create_table :list_items do |t|
      t.belongs_to :list
      t.text :description
      t.datetime :completed_at
      t.datetime :due_at
      t.timestamps
    end
  end
end

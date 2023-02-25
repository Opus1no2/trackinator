class CreateListViewSettings < ActiveRecord::Migration[7.0]
  def change
    create_table :list_view_settings do |t|
      t.belongs_to :list
      t.boolean :show_complete, default: false
      t.timestamps
    end
  end
end

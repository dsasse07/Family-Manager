class CreateListItems < ActiveRecord::Migration[6.1]
  def change
    create_table :list_items do |t|
      t.string :content
      t.boolean :complete, default: false
      t.belongs_to :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end

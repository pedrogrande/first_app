class CreateInfoBoxes < ActiveRecord::Migration
  def change
    create_table :info_boxes do |t|
      t.string :icon
      t.string :title
      t.text :content
      t.boolean :active, default: false

      t.timestamps null: false
    end
  end
end

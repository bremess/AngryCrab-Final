class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name
      t.string :photo
      t.text :description
      t.decimal :price
      t.string :sauce
      t.string :heat_level
      t.integer :quantity

      t.timestamps null: false
    end
  end
end

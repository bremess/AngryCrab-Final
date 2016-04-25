class AddColumnsToOrderItem < ActiveRecord::Migration
  def change
    add_column :order_items, :sauce, :string
    add_column :order_items, :heat, :string
    add_column :order_items, :quantity, :integer
  end
end

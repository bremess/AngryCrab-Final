class DeleteRecordsMenus < ActiveRecord::Migration
  def change
    remove_column :menus, :sauce, :string
    remove_column :menus, :heat_level, :string
    remove_column :menus, :quantity, :integer
  end
end

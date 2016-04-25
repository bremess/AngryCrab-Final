class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :phone
      t.datetime :pickup_time

      t.timestamps null: false
    end
  end
end

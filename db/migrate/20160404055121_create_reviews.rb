class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.text :message
      t.string :rate
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end

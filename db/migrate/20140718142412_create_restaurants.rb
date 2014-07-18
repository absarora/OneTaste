class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :state
      t.string :city
      t.string :street_address
      t.string :category
      t.integer :creator_id

      t.timestamps
    end
  end
end

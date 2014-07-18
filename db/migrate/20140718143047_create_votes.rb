class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :review_id
      t.integer :comment_id
      t.integer :restaurant_id
      t.integer :voter_id

      t.timestamps
    end
  end
end

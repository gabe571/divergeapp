class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :reviewed_game
      t.integer :rating
      t.integer :purchase_id

      t.timestamps
    end
  end
end

class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :title
      t.date :release_date
      t.integer :game_studio_id
    end
  end
end

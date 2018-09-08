class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.string :name
      t.string :day
      t.string :group
      t.string :bestof
      t.string :team1
      t.string :team2
      t.string :games_id

      t.timestamps
    end
  end
end

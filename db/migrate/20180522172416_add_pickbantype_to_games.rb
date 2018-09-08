class AddPickbantypeToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :pickbantype, :string
  end
end

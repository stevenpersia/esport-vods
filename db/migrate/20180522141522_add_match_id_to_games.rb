class AddMatchIdToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :match_id, :string
  end
end

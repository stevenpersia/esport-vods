class AddGamestartTwToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :gamestart_tw, :string
  end
end

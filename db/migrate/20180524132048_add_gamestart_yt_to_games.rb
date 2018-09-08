class AddGamestartYtToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :gamestart_yt, :string
  end
end

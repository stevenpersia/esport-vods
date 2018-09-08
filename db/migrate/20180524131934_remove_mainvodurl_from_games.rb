class RemoveMainvodurlFromGames < ActiveRecord::Migration[5.2]
  def change
    remove_column :games, :mainvodurl, :string
  end
end

class RemovePickbanurlFromGames < ActiveRecord::Migration[5.2]
  def change
    remove_column :games, :pickbanurl, :string
  end
end

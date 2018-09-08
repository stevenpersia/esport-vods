class RemovePickbantypeFromGames < ActiveRecord::Migration[5.2]
  def change
    remove_column :games, :pickbantype, :string
  end
end

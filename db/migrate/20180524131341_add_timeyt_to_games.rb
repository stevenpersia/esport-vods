class AddTimeytToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :timeyt, :string
  end
end

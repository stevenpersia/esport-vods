class AddUrlstreamToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :urlstream, :string
  end
end

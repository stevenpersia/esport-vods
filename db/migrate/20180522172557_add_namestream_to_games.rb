class AddNamestreamToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :namestream, :string
  end
end

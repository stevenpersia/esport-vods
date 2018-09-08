class AddMainvodtypeToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :mainvodtype, :string
  end
end

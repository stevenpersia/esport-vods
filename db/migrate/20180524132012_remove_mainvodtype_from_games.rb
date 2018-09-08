class RemoveMainvodtypeFromGames < ActiveRecord::Migration[5.2]
  def change
    remove_column :games, :mainvodtype, :string
  end
end

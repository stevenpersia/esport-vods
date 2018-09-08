class RemoveGamesIdFromMatches < ActiveRecord::Migration[5.2]
  def change
    remove_column :matches, :games_id, :string
  end
end

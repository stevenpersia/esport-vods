class RemoveMatchesIdFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :matches_id, :string
  end
end

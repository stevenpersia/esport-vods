class AddEventIdToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :event_id, :string
  end
end

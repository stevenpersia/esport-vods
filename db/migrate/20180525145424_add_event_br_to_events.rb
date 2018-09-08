class AddEventBrToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :event_br, :boolean
  end
end

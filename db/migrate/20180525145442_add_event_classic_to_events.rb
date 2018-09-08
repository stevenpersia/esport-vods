class AddEventClassicToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :event_classic, :boolean
  end
end

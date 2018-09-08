class AddEventSpecialToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :event_special, :boolean
  end
end

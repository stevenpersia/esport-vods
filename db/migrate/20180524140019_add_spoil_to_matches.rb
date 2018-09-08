class AddSpoilToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :spoil, :boolean
  end
end

class AddFavToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :fav, :binary
  end
end

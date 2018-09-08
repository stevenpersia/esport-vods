class AddLogoToSupports < ActiveRecord::Migration[5.2]
  def change
    add_column :supports, :logo, :string
  end
end

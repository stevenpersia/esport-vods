class CreateSupports < ActiveRecord::Migration[5.2]
  def change
    create_table :supports do |t|
      t.string :name
      t.string :subtitle
      t.string :link

      t.timestamps
    end
  end
end

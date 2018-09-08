class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.date :start
      t.date :end
      t.string :subtitle
      t.string :category_id
      t.string :matches_id

      t.timestamps
    end
  end
end

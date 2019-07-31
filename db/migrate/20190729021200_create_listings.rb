class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.date :start_time
      t.date :end_time
      t.integer :price
      t.references :motorhome, foreign_key: true

      t.timestamps
    end
  end
end

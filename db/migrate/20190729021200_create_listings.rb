class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.date :date_from
      t.date :date_to
      t.integer :price
      t.references :motorhome, foreign_key: true

      t.timestamps
    end
  end
end

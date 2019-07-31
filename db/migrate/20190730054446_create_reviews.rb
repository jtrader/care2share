class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :text
      t.references :writer
      t.references :listing, foreign_key: true

      t.timestamps
    end
    add_foreign_key :reviews, :users, column: :writer_id, primary_key: :id
  end
end

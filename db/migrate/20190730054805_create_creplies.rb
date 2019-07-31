class CreateCreplies < ActiveRecord::Migration[5.2]
  def change
    create_table :creplies do |t|
      t.text :text
      t.references :writer
      t.references :comment, foreign_key: true

      t.timestamps
    end
    add_foreign_key :creplies, :users, column: :writer_id, primary_key: :id
  end
end

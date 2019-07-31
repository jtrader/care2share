class CreateRreplies < ActiveRecord::Migration[5.2]
  def change
    create_table :rreplies do |t|
      t.text :text
      t.references :writer
      t.references :review, foreign_key: true

      t.timestamps
    end
    add_foreign_key :rreplies, :users, column: :writer_id, primary_key: :id
  end
end

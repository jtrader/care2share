class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :text
      t.references :writer
      t.references :recipient

      t.timestamps
    end
    add_foreign_key :comments, :users, column: :writer_id, primary_key: :id
    add_foreign_key :comments, :users, column: :recipient_id, primary_key: :id
  end
end

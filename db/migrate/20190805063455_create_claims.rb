class CreateClaims < ActiveRecord::Migration[5.2]
  def change
    create_table :claims do |t|
      t.references :listing, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :approved

      t.timestamps
    end
  end
end

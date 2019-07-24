class CreateMotorhomes < ActiveRecord::Migration[5.2]
  def change
    create_table :motorhomes do |t|
      t.string :make
      t.string :model

      t.timestamps
    end
  end
end

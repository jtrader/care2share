class DropLengthTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :lengths
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end

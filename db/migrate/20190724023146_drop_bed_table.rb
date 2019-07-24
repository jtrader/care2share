class DropBedTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :beds
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end

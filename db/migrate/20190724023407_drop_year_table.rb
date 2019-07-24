class DropYearTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :years
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end

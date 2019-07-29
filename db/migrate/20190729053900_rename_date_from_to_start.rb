class RenameDateFromToStart < ActiveRecord::Migration[5.2]
  def change
    rename_column :listings, :start_date, :start_time
  end
end

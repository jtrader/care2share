class RenameDateFromToStartTime < ActiveRecord::Migration[5.2]
  def change
    rename_column :listings, :date_from, :start_time
  end
end

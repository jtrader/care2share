class RenameDateToToEndTime < ActiveRecord::Migration[5.2]
  def change
    rename_column :listings, :date_to, :end_time
  end
end

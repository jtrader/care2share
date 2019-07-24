class AddYearToMotorhome < ActiveRecord::Migration[5.2]
  def change
    add_column :motorhomes, :year, :integer
  end
end

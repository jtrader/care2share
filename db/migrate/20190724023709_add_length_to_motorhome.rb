class AddLengthToMotorhome < ActiveRecord::Migration[5.2]
  def change
    add_column :motorhomes, :length, :integer
  end
end

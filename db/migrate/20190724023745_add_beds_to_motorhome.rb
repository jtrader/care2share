class AddBedsToMotorhome < ActiveRecord::Migration[5.2]
  def change
    add_column :motorhomes, :beds, :integer
  end
end

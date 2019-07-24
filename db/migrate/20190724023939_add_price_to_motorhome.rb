class AddPriceToMotorhome < ActiveRecord::Migration[5.2]
  def change
    add_column :motorhomes, :price, :integer
  end
end

class AddUserRefToMotorhome < ActiveRecord::Migration[5.2]
  def change
    add_reference :motorhomes, :user, foreign_key: true
  end
end

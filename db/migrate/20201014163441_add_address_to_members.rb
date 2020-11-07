class AddAddressToMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :address, :varchar
  end
end

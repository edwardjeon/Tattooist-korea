class AddPhoneToMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :phone, :string
  end
end

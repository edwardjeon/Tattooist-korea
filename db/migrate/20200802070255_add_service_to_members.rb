class AddServiceToMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :service, :string
  end
end

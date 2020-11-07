class AddContentsToMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :contents, :varchar
  end
end

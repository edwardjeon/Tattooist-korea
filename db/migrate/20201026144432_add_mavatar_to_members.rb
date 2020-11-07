class AddMavatarToMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :mavatar, :string
  end
end

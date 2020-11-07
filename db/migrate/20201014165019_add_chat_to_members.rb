class AddChatToMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :chat, :varchar
  end
end

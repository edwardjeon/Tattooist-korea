class AddServicePeriodToMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :service_period, :string
  end
end

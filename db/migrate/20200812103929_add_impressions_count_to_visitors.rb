class AddImpressionsCountToVisitors < ActiveRecord::Migration[6.0]
  def change
    add_column :visitors, :impressions_count, :integer
  end
end

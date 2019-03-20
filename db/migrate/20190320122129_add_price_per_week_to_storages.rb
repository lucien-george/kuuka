class AddPricePerWeekToStorages < ActiveRecord::Migration[5.2]
  def change
    add_column :storages, :price_per_week, :integer
  end
end

class AddPricePerDayToStorages < ActiveRecord::Migration[5.2]
  def change
    add_column :storages, :price_per_day, :integer
  end
end

class AddPricePerMonthToStorages < ActiveRecord::Migration[5.2]
  def change
    add_column :storages, :price_per_month, :integer
  end
end

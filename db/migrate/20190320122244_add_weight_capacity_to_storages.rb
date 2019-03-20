class AddWeightCapacityToStorages < ActiveRecord::Migration[5.2]
  def change
    add_column :storages, :weight_capacity, :integer
  end
end

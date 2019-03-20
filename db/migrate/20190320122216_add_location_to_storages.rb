class AddLocationToStorages < ActiveRecord::Migration[5.2]
  def change
    add_column :storages, :location, :string
  end
end

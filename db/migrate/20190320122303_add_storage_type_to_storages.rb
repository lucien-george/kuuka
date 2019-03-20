class AddStorageTypeToStorages < ActiveRecord::Migration[5.2]
  def change
    add_column :storages, :storage_type, :string
  end
end

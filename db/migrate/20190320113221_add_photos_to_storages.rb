class AddPhotosToStorages < ActiveRecord::Migration[5.2]
  def change
    add_column :storages, :photos, :json
  end
end

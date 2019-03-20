class RemoveDescriptionFromStorages < ActiveRecord::Migration[5.2]
  def change
    remove_column :storages, :description, :text
  end
end

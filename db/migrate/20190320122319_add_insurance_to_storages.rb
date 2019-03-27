class AddInsuranceToStorages < ActiveRecord::Migration[5.2]
  def change
    add_column :storages, :insurance, :boolean
  end
end

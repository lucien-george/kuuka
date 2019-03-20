class AddInsuranceTypeToStorages < ActiveRecord::Migration[5.2]
  def change
    add_column :storages, :insurance_type, :string
  end
end

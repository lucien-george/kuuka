class AddPhotosToVehicles < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicles, :photos, :json
  end
end

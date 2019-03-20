class AddDriverLicenseNumberToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :driver_license_number, :string
  end
end

class AddDriverToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :driver, :boolean, default: false
  end
end

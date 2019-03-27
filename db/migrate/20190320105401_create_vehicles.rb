class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.references :user, foreign_key: true
      t.string :make
      t.integer :year
      t.boolean :owner
      t.string :color
      t.string :inspection_card
      t.boolean :diesel
      t.boolean :property_insurance
      t.boolean :insurance

      t.timestamps
    end
  end
end

class CreateStorages < ActiveRecord::Migration[5.2]
  def change
    create_table :storages do |t|
      t.references :user, foreign_key: true
      t.integer :height
      t.integer :width
      t.integer :depth
      t.string :unit

      t.timestamps
    end
  end
end

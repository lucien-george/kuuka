class CreateStorages < ActiveRecord::Migration[5.2]
  def change
    create_table :storages do |t|
      t.references :user, foreign_key: true
      t.text :description
      t.integer :size

      t.timestamps
    end
  end
end

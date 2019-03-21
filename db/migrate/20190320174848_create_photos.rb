class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :url
      t.references :storage, foreign_key: true
      t.references :vehicle, foreign_key: true

      t.timestamps
    end
  end
end

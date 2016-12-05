class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :id
      t.string :latitude
      t.string :longitude
      t.string :mail_item_id

      t.timestamps
    end
  end
end

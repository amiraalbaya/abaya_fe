class CreateArriveds < ActiveRecord::Migration[5.0]
  def change
    create_table :arriveds do |t|
      t.string :id
      t.string :date_arrived_pittsburgh
      t.string :sender_string
      t.string :description
      t.string :comment
      t.integer :shipping_weight
      t.boolean :discard

      t.timestamps
    end
  end
end

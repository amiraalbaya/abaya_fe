class CreateTransits < ActiveRecord::Migration[5.0]
  def change
    create_table :transits do |t|
      t.string :id
      t.string :date_delivered
      t.string :sender_string
      t.string :description
      t.string :comment
      t.integer :shipping_weight
      t.boolean :arrived

      t.timestamps
    end
  end
end

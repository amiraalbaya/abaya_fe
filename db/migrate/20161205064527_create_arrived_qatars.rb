class CreateArrivedQatars < ActiveRecord::Migration[5.0]
  def change
    create_table :arrived_qatars do |t|
      t.string :date_arrived_pittsburgh
      t.string :date_delivered
      t.string :date_arrived_qatar
      t.string :sender
      t.string :description
      t.string :comment
      t.integer :shipping_weight
      t.boolean :delivered

      t.timestamps
    end
  end
end

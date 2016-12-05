class CreateMailItems < ActiveRecord::Migration[5.0]
  def change
    create_table :mail_items do |t|
      t.string :id
      t.string :date_arrived_pittsburgh
      t.string :date_arrived_qatar
      t.string :date_delivered
      t.string :sender_string
      t.string :description
      t.string :comment
      t.integer :shipping_weight
      t.boolean :discard
      t.string :user_id

      t.timestamps
    end
  end
end

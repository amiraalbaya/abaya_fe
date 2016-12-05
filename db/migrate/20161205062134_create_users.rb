class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :id
      t.string :first_name
      t.string :last_name
      t.string :andrew_id
      t.string :username
      t.string :password
      t.boolean :facilities

      t.timestamps
    end
  end
end

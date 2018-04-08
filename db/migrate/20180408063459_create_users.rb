class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.datetime :birthday
      t.string :gender
      t.integer :phone
      t.string :address
      t.text :comment
      t.integer :users_id

      t.timestamps
    end
  end
end

class CreateSite1s < ActiveRecord::Migration[5.1]
  def change
    create_table :site1s do |t|
      t.integer :user_id
      t.integer :rating

      t.timestamps
    end
  end
end

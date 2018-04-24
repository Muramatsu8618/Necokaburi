class CreateSite3s < ActiveRecord::Migration[5.1]
  def change
    create_table :site3s do |t|
      t.integer :rating

      t.timestamps
    end
  end
end

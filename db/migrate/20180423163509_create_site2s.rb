class CreateSite2s < ActiveRecord::Migration[5.1]
  def change
    create_table :site2s do |t|
      t.integer :rating

      t.timestamps
    end
  end
end

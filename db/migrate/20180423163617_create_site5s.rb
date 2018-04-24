class CreateSite5s < ActiveRecord::Migration[5.1]
  def change
    create_table :site5s do |t|
      t.integer :rating

      t.timestamps
    end
  end
end

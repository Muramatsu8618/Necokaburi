class AddUserIdToSite3 < ActiveRecord::Migration[5.1]
  def change
    add_column :site3s, :user_id, :integer
  end
end

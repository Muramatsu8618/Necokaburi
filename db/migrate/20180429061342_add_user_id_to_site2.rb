class AddUserIdToSite2 < ActiveRecord::Migration[5.1]
  def change
    add_column :site2s, :user_id, :integer
  end
end

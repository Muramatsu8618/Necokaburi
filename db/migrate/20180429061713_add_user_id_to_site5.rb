class AddUserIdToSite5 < ActiveRecord::Migration[5.1]
  def change
    add_column :site5s, :user_id, :integer
  end
end

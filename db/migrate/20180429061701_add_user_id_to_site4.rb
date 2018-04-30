class AddUserIdToSite4 < ActiveRecord::Migration[5.1]
  def change
    add_column :site4s, :user_id, :integer
  end
end

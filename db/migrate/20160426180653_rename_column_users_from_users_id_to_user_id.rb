class RenameColumnUsersFromUsersIdToUserId < ActiveRecord::Migration
  def change
  	rename_column :addresses, :users_id, :user_id
  end
end

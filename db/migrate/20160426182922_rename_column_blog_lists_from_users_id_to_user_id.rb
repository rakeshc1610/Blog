class RenameColumnBlogListsFromUsersIdToUserId < ActiveRecord::Migration
  def change
  	rename_column :blog_lists, :users_id, :user_id
  end
end

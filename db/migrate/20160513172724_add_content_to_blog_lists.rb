class AddContentToBlogLists < ActiveRecord::Migration
  def change
    add_column :blog_lists, :content, :text, null: false
  end
end

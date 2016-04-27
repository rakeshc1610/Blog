class CreateBlogLists < ActiveRecord::Migration
  def change
    create_table :blog_lists do |t|
    	t.string :name
    	t.references :users
        t.boolean :active, default: false

      t.timestamps null: false
    end
  end
end
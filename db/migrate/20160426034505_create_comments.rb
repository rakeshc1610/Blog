class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.references :user
    	t.references :blog_list
    	t.text :message

      t.timestamps null: false
    end
  end
end
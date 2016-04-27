class CreateCommunityUsers < ActiveRecord::Migration
  def change
    create_table :community_users,id: false do |t|
    	t.integer :community_id
    	t.integer :user_id
    end
  end
end

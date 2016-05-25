class Community < ActiveRecord::Base
	validates :name, presence: true
	validates :name, uniqueness: true
  has_and_belongs_to_many :users, join_table: :community_users
end

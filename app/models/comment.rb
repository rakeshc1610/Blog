class Comment < ActiveRecord::Base
	validates :message, presence: true
	validates :message, length: { maximum: 50 }
	belongs_to :blog_list
end

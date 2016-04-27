class User < ActiveRecord::Base

	validates :first_name, :last_name, :email, :password, presence: true
    validates :email, uniqueness: true
    validate  :email_regex
    validates :password, length: { in: 8..16 }
    validate :password_validation
    #before_validation :compute_fullname
    #validates :fullname, uniqueness: true
    has_many  :blog_lists
    has_and_belongs_to_many  :communities, join_table: :community_users
    has_one :address

end


 def email_regex
    if email.present? and not email.match(/\A[^@]+@[^@]+\z/)
      errors.add :email, "This is not a valid email format"
    end
 end


 def password_validation
    if password.present? and not password.match(/^(?=.*[a-zA-Z])(?=.*[0-9]).{6,}$/)
      errors.add :password, "must include at least one lowercase letter, one uppercase letter, and one digit"
    end
 end

def compute_fullname 
   fullname = (self.first_name+self.last_name)
end

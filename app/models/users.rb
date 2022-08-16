# email:t.string 
# password_digest:string

# password:string virtual
# password_confirmation:string virtual

class Users <  ActiveRecord::Base
    has_secure_password
    has_many :jobs
    has_many :job_apply
    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message:"must be a valid email address!!"}
end

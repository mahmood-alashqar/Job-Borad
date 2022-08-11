# email:t.string 
# password_digest:string

# password:string virtual
# password_confirmation:string virtual

class User < ApplicationRecord
    has_secure_password
    # validate :email, presence: true
end

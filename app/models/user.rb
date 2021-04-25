#email:string 
#password_digest:string 

#password:string virtual 
#password_confirmation:string virtual

class User < ApplicationRecord
    has_secure_password

    validates :email, presence :true, validates_format_of :attribute, with:/^[^\s@]+@[^\s@]+$/, on: :create, message: "is invalid", if: proc { |obj| obj.condition? }}
end

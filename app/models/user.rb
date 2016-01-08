class User < ActiveRecord::Base
  attr_accessible :password, :password_confirmation, :role, :username
  has_secure_password
  
  ROLES = %w[guest manager admin]

    def role?(base_role)
        ROLES.index(base_role.to_s) <= ROLES.index(role)
    end
    
end

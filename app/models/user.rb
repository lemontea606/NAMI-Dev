class User < ActiveRecord::Base
    attr_accessible :id, :username, :first_name, :last_name, :email
    has_secure_password
    
    ######## Log in with encrypted password ###########
    def self.log_in_with(user,passwd)
        User.find_by_username(username).try(:authenticate, passwd)
    end
end
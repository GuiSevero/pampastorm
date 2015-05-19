class User < ActiveRecord::Base
	before_save { self.name = email.downcase }
	validates :name,  presence: true, length: { maximum: 20 }, uniqueness: { case_sensitive: false }
	validates :password, length: { minimum: 6 }
	has_secure_password
end

class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	validates :name, presence: true, 
					 length: { maximum: 50 },
					 uniqueness: {case_sensitive: false}

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, 
					  format: { with: VALID_EMAIL_REGEX }, 
					  uniqueness: {case_sensitive: false}
	
	VALID_ZIPCODE_REGEX = /\A[0-9]{2}-[0-9]{3}\z/i
	validates :zipcode, presence: true, 
						length: { minimum: 6 , maximum: 6 }, 
						format: { with: VALID_ZIPCODE_REGEX }
	has_secure_password
	validates :password, length: { minimum: 6 }
end

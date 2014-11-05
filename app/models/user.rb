class User < ActiveRecord::Base
  has_many :fields
  has_many :mobs
	has_many :warehouses
  has_many :buildings
  has_many :machines
  attr_accessor :remember_token, :reset_token
	before_save :downcase_email

	

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

	validates :user_type_id, presence: true

    # Returns the hash digest of the given string.
  	def User.digest(string)
    	cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
	    BCrypt::Password.create(string, cost: cost)
  	end

  	# Returns a random token.
  	def User.new_token
    	SecureRandom.urlsafe_base64
  	end

  	# Remembers a user in the database for use in persistent sessions.
  	def remember
    	self.remember_token = User.new_token
    	update_attribute(:remember_digest, User.digest(remember_token))
  	end

  	# Returns true if the given token matches the digest.
     
  	#def authenticated?(remember_token)
    #	BCrypt::Password.new(remember_digest).is_password?(remember_token)
  	#end

    def authenticated?(attribute, token)
      digest = send("#{attribute}_digest")
      BCrypt::Password.new(digest).is_password?(token)
    end

  	# Forgets a user.
  	def forget
	    update_attribute(:remember_digest, nil)
  	end

    # Sets the password reset attributes.
    def create_reset_digest
      self.reset_token = User.new_token
      update_attribute(:reset_digest,  User.digest(reset_token))
      update_attribute(:reset_sent_at, Time.zone.now)
    end

    # Sends password reset email.
    def send_password_reset_email
      UserMailer.password_reset(self).deliver #you should use deliver_now, które 
        #jest dostepne od 4.2
    end

    # Returns true if a password reset has expired.
    def password_reset_expired?
      reset_sent_at < 2.hours.ago
    end
    

    private

      # Converts email to all lower-case.
      def downcase_email
        self.email = email.downcase
      end

end

class SignupForm
	# Rails 4: include ActiveModel::Model
	extend ActiveModel::Naming
	include ActiveModel::Conversion
	include ActiveModel::Validations

	def persisted?
		false
	end
	
	validates_presence_of :username
  validates_uniqueness_of :username
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/
  validates_length_of :password, minimum: 6


	def subscribed
    subscribed_at
  end

  def subscribed=(checkbox)
    subscribed_at = Time.zone.now if checkbox == "1"
  end

  def generate_token
    begin
      self.token = SecureRandom.hex
    end while User.exists?(token: token)
  end
end

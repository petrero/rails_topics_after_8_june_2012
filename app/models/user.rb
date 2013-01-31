class User < ActiveRecord::Base
  has_many :tasks

  attr_accessible :username, :email, :password, :password_confirmation

  validates_presence_of :username, :email, unless: :guest?
  validates_uniqueness_of :username, allow_blank: true


  validates_confirmation_of :password
  validates_presence_of     :password_digest, unless: :guest?

	require 'bcrypt'

  attr_reader :password
  include InstanceMethodsOnActivation


	def self.new_guest
		new {|u| u.guest = true}
	end
end

class User < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation, :site_url
  has_secure_password
  validates_format_of :name, with: /^\w+$/
end

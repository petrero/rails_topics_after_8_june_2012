class User < ActiveRecord::Base
  has_many :tasks, dependent: :destroy
	belongs_to :profile, polymorphic: true
end

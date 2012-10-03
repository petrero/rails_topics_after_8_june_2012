class Topic < ActiveRecord::Base
  has_many :posts
  accepts_nested_attributes_for :posts

  attr_accessible :name, as: :user
	attr_accessible :sticky, :name, as: :admin
end

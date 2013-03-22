class Comment < ActiveRecord::Base
	include PublicActivity::Model
	tracked

  belongs_to :user
  belongs_to :recipe
  attr_accessible :content
end

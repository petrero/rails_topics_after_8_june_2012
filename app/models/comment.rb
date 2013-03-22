class Comment < ActiveRecord::Base
	include PublicActivity::Model
	tracked owner: ->(controller, model) { controller && controller.current_user }

  belongs_to :user
  belongs_to :recipe
  attr_accessible :content
end

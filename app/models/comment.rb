class Comment < ActiveRecord::Base
	include PublicActivity::Model
	tracked except: :update, owner: ->(controller, model) { controller && controller.current_user }

  belongs_to :user
  belongs_to :recipe
  attr_accessible :content
end

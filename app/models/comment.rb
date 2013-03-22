class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :recipe
  attr_accessible :content
end

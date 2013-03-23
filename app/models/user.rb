class User < ActiveRecord::Base
  attr_accessible :avatar_image_name, :bio, :full_name, :github_name, :twitter_name, :url, :username
end

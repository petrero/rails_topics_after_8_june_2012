class Review < ActiveRecord::Base
  belongs_to :movie
  attr_accessible :content, :name, :rating, :movie, :movie_id
end

class Product < ActiveRecord::Base
  belongs_to :category
  attr_accessible :discontinued, :name, :price, :category_id
end

class Product < ActiveRecord::Base
  belongs_to :category
	validates_numericality_of :price
  attr_accessible :discontinued, :name, :price, :category_id
end

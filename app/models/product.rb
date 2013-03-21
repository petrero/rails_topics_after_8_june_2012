class Product < ActiveRecord::Base
  belongs_to :category
	validates_numericality_of :price
  attr_accessible :discontinued, :name, :price, :category_id, :price_modification

	attr_reader :price_modification

	def price_modification=(new_price)
		@price_modification = new_price
		if new_price.to_s.ends_with? "%"
			self.price += (price * (new_price.to_d/100)).round(2)
		else
			self.price = new_price
		end
	end
end

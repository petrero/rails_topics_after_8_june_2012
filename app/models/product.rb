class Product < ActiveRecord::Base
  belongs_to :category
  attr_accessible :name, :price, :released_on, :category_id

	def category_name
		Rails.cache.fetch([:category, category_id, :name], expires_in: 5.minutes) do
			category.name
		end
	end
end

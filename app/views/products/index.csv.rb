CSV.generate do |csv|
	csv << ["Name", "Price", "URL"]
	@products.each do |product|
		csv << [
			product.name,
			number_to_currency(product.price),
			product_url(product)
		]
	end
end

@products.map do |product|
	{
		name: product.name,
		price: number_to_currency(product.price),
		url: product_url(product),
		#reviews: product.reviews.map {|r| JSON.parse(render(r))}
		#reviews/_reviews.json.rb
	}
end.to_json

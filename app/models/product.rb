class Product < ActiveRecord::Base
  belongs_to :category

	def update_with_conflict_validation(*args)
		update_attributes(*args)
	rescue ActiveRecord::StaleObjectError
		errors.add :base, "This record changed while you were editing."
		changes.each do |name, values|
			errors.add name, "was #{values.first}"
		end
		false
	end
  attr_accessible :name, :price, :released_on, :category_id, :lock_version
end

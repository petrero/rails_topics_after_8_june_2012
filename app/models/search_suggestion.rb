class SearchSuggestion < ActiveRecord::Base
  attr_accessible :popularity, :term

	def self.terms_for(prefix)
		suggestions = where("term like ?", "#{prefix}_%")
		suggestions.order("popularity desc").limit(10).pluck(:term)
	end
end

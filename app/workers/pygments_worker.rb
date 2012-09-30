class PygmentsWorker
	include Sidekiq::Worker
	# sidekiq_options retry: false
	@foo = bar
	
	def perform(snippet_id)
		snippet = Snippet.find(snippet_id)
		uri = URI.parse("http://pygments.appspot.com/")
    request = Net::HTTP.post_form(uri, lang: snippet.language, code: snippet.plain_code)
    snippet.update_attribute(:highlighted_code, request.body)
	end
end

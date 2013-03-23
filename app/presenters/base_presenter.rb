class BasePresenter
	def initialize(object, template)
		@object = object
		@template = template
	end

	def self.presents(name)
		define_method(name) do
			@object
		end
	end

	def h
		@template
	end

	def method_missing(*args, &block)
		@template.send(*args, &block)
	end
private
	def markdown(text)
		renderer = Redcarpet::Render::HTML.new({
			filter_html: true,
			hard_wrap: true
		})

		markdown = Redcarpet::Markdown.new(renderer, {
			autolink: true,
			no_intra_emphasis: true
		})

		markdown.render(text).html_safe
	end

end

module ApplicationHelper
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

	def present(object, klass = nil)
		klass ||= "#{object.class}Presenter".constantize
		presenter = klass.new(object, self)
		yield presenter if block_given?
		presenter
	end
end

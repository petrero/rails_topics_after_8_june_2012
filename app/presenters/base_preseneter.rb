class BasePresenter
	def initialize(user, template)
		@user = user
		@template = template
	end

	def h
		@template
	end

end

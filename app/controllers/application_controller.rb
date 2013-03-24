class ApplicationController < ActionController::Base
  protect_from_forgery

private

  def current_user
    OpenStruct.new(admin?: false)
  end
  helper_method :current_user


	def default_serializer_options
		{root: false}
	end
end

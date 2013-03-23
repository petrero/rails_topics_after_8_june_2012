require 'spec_helper'

describe UserPresenter do

	it "says when none given" do
		#view.current_user #will not work
		presenter = UserPresenter.new(User.new, view)
		presenter.website.should include("None given")
	end
end

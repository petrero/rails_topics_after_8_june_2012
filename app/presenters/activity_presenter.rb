class ActivityPresenter < SimpleDelegator
	attr_reader :activity

	def initialize(activity, view)
		super(view)
		@activity = activity
	end

	def render_activity
		div_for activity do
			link_to activity.user.name, activity.user
			render "activities/#{activity.trackable_type.underscore}/#{activity.action}", activity: activity
	  end
	end
end

class UserPresenter < BasePresenter
	presents :user
	delegate :username, to: :user

	def avatar
		h.link_to_if user.url.present?, h.image_tag("avatars/#{avatar_name}", class: "avatar"), user.url
	end

	def linked_name
		h.link_to_if user.url.present?, (user.full_name.present? ? user.full_name : user.username), user.url
	end


	def member_since
		user.created_at.strftime("%B %e, %Y")
	end

	def website
		if user.url.present?
		  h.link_to user.url, user.url
		else
		  h.content_tag :span, "None given", class: "none"
		end
	end

	def twitter
		if user.twitter_name.present?
		  h.link_to user.twitter_name, "http://twitter.com/#{user.twitter_name}"
		else
		  h.content_tag :span, "None given", class: "none"
		end
	end

	def bio
		if user.bio.present?
		  markdown(user.bio)
		else
		  h.content_tag :span, "None given", class: "none"
		end
	end
private

	def avatar_name
    if user.avatar_image_name.present?
      user.avatar_image_name
    else
      "default.png"
    end
  end
end

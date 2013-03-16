class SessionsController < ApplicationController
	def new
  end

  def create
    if auth = env["omniauth.auth"]
      @user = User.where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
				user.provider = auth[:provider]
				user.uid = auth[:uid]
				user.username = auth[:info][:nickname]
				user.save!
			end
    else
      user = User.find_by_username(params[:username])
			@user = user if user && user.authenticate(params[:password])
    end
    if @user
      session[:user_id] = @user.id
      redirect_to root_url, notice: "Logged in!"
    else
      flash.now.alert = "Username or password is invalid"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end

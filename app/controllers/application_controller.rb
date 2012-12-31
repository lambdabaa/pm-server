class ApplicationController < ActionController::Base
  # protect_from_forgery

  def login(user)
    session[:uid] = user.id
    user
  end

  def current_user
    session[:uid] ? User.find(session[:uid]) : nil
  end

  def logout
    session.delete(:uid)
    redirect_to root_path
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :signed_in?

  private

  def current_user
    return nil unless session[:session_token]
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def signed_in?
    !!current_user
  end

  def signin(user)
    user.reset_session_token!
    session[:session_token] = user.session_token
    @current_user = user
  end

  def signout
    current_user.reset_session_token!
    session[:session_token] = nil
    @current_user = nil
  end

  def require_sign_in
    render json: { base: ['Invalid credentials.'] }, status: 401 if !current_user
  end
end

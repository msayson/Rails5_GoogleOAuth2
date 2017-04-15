# Base application controller, which processes requests
# and decides what to send back to the view
# See http://guides.rubyonrails.org/action_controller_overview.html
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :user_signed_in?
  helper_method :correct_user?

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  rescue ActiveRecord::RecordNotFound => _
    logger.warn "No record found for user #{user_id}"
  rescue StandardError => e
    logger.warn "Unexpected exception in current_user(): #{e}"
  end

  def user_signed_in?
    return true if current_user
  end

  def correct_user?
    @user = User.find(params[:id])
    redirect_to root_url, alert: 'Access denied.' unless current_user == @user
  end

  def authenticate_user!
    return if current_user
    redirect_to root_url, alert: 'Please sign in to view this page.'
  end
end

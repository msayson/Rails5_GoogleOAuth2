# Base application controller, which processes requests
# and decides what to send back to the view
# See http://guides.rubyonrails.org/action_controller_overview.html
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end

# Users controller
class UsersController < ApplicationController
  before_action :authenticate_user!

  # Checks whether authentication matches requested id
  # If not a match, redirects user with an alert
  before_action :correct_user?

  def show
    @user = User.find(params[:id])
  end
end

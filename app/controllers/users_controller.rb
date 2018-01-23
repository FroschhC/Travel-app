class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @locations = current_user.locations
  end
end

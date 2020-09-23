class UsersController < ApplicationController
  before_action :authenticate_user, only:[:current]

  def current
    render json: current_user, include: :images
  end



end

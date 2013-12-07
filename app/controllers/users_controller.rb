class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @point_badges = @user.point_badges
  end
end

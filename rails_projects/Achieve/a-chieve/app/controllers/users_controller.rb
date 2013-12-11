class UsersController < ApplicationController
	skip_before_filter :verify_authenticity_token

  def show
    @user = User.find(params[:id])
  end

  def admin
    if current_user.nil? or !current_user.role_id.in?([2,3])
      redirect_to "/"
    end

    if params["search"].nil? or params["search"]==""
      @users = User.all
      @search = ""
    else
      @users = User.where("lower(profile_name) LIKE ?", params["search"].downcase)
      @search = params["search"]
    end
  end

  def user_role
  	if current_user.nil? or !current_user.role_id.in?([2,3])
      redirect_to "/"
    end

    user = User.find(params[:user_id])
    user.role_id = params[:role_id]

    respond_to do |format|
      if user.save
        format.html { redirect_to "/admin/users", notice: 'User was successfully updated.' }
      else
        format.html { redirect_to "/admin/users", notice: 'unprocessable_entity' }
      end
    end
  end
end

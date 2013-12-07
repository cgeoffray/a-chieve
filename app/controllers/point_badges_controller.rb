class PointBadgesController < ApplicationController
  def new
    @badge = PointBadge.new
  end

  def edit
@badge = PointBadge.find(params[:id])
  end

  def create
    @badge = PointBadge.new(badge_params)
    if @badge.save
      redirect_to admin_path, notice: "Badge was successfully created."
    else
      render action: 'new'
    end
  end

  def update
    badge = PointBadge.find(params[:id])
    if badge.update(badge_params)
      redirect_to admin_path
    else
      render action: 'edit'
    end
  end

  def destroy
    badge = PointBadge.find(params[:id])
    badge.destroy
    redirect_to admin_path
  end

  private
  def badge_params
    params.require(:point_badge).permit(:name, :threshold, :picture)
  end
end

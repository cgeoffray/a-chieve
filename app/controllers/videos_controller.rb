class VideosController < ApplicationController
  #before_action :set_user, only: [:show, :edit, :update, :destroy]

  def new
    @job = Job.find(params[:job_id])
    @video = @job.videos.build
  end

  def edit
  end

  def create
    @job = Job.find(params[:job_id])
    @video = @job.videos.build(video_params)

    respond_to do |format|
      if @video.save
        format.html { redirect_to edit_job_path(@video.job), notice: 'Job was successfully created.' }
        format.json { render action: 'show', status: :created, location: edit_job_path(@video.job) }
      else
        format.html { render action: 'new' }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    video = Video.find(params[:id])
    job = video.job
    video.destroy
    respond_to do |format|
      format.html { redirect_to edit_job_path(job) }
      format.json { head :no_content }
    end
  end

  def video_params
    params.require(:video).permit(:title, :description, :video_url, :job_ids)
  end

end
class SuccessCardsController < ApplicationController
  def new
    @job = Job.find(params[:job_id])
    @success_card = @job.success_cards.build
  end

  def edit
    @success_card = SuccessCard.find(params[:id])
  end

  def index
     @success_cards = SuccessCard.all
  end

  def create
    @job = Job.find(params[:job_id])
    @success_card = @job.success_cards.build(success_card_params)

    respond_to do |format|
      if @success_card.save
        format.html { redirect_to edit_job_path(@success_card.job), notice: 'Job was successfully created.' }
        format.json { render action: 'show', status: :created, location: edit_job_path(@success_card.job) }
      else
        format.html { render action: 'new' }
        format.json { render json: @success_card.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    success_card = SuccessCard.find(params[:id])
    respond_to do |format|
      if success_card.update(success_card_params)
        format.html { redirect_to edit_job_path(success_card.job) }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: sc.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    success_card = SuccessCard.find(params[:id])
    job = success_card.job
    success_card.destroy
    respond_to do |format|
      format.html { redirect_to edit_job_path(job) }
      format.json { head :no_content }
    end
  end

  private
  def success_card_params
    params.require(:success_card).permit(:name, :job_title, :income, :schooling, :additional_training, :awards, :skills, :fun_fact, :challenges, :find_out_more, :picture, :job_id)
  end

end

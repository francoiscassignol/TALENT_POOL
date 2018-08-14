class JobOffersController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @job_offers = JobOffer.all
  end

  def show
    @job_offer = JobOffer.find(params[:id])
  end

  def new
    @job_offer = JobOffer.new
  end

  def create
    @job_offer = JobOffer.new(job_offer_params)
    if @job_offer.save
      redirect_to job_offer_path(@job_offer)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def job_offer_params
    params.require(:job_offer).permit(:job_title, :division, :start_date, :location, :contract_type, :division_description, :job_description, :expected_profile, :category)
  end
end

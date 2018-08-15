class JobOffersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @job_offers = JobOffer.all
  end

  def show
    fetch_job_offer
  end

  def new
    @job_offer = JobOffer.new
  end

  def create
    @job_offer = JobOffer.new(job_offer_params)
    @job_offer[:start_date] = Date.parse
    @job_offer.user = current_user
    if @job_offer.save
      redirect_to job_offer_path(@job_offer)
    else
      render 'new'
    end
  end

  def edit
    fetch_job_offer
  end

  def update
    fetch_job_offer
    @job_offer.update(job_offer_params)
    redirect_to job_offer_path(@job_offer)
  end

  def destroy
    fetch_job_offer
    @job_offer.destroy
    redirect_to job_offers_path
  end

  private

  def fetch_job_offer
    @job_offer = JobOffer.find(params[:id])
  end

  def job_offer_params
    params.require(:job_offer).permit(:job_title, :division, :start_date, :location, :contract_type, :division_description, :job_description, :expected_profile, :category)
  end
end

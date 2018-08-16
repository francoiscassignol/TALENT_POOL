class JobOffersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:category].present?
      @job_offers = policy_scope(JobOffer).where(category: params[:category])
    else
      @job_offers = policy_scope(JobOffer)
    end
  end

  def show
    fetch_job_offer
    authorize @job_offer
  end

  def new
    @job_offer = JobOffer.new
    authorize @job_offer
  end

  def create
    @job_offer = JobOffer.new(job_offer_params)
    # credits to AUDE #
    @job_offer.user = current_user
    authorize @job_offer
    if @job_offer.save
      redirect_to job_offer_path(@job_offer)
    else
      render 'new'
    end
  end

  def edit
    fetch_job_offer
    authorize @job_offer
  end

  def update
    fetch_job_offer
    authorize @job_offer
    @job_offer.update(job_offer_params)
    redirect_to job_offer_path(@job_offer)
  end

  def destroy
    fetch_job_offer
    authorize @job_offer
    @job_offer.destroy
    redirect_to job_offers_path
  end

  private

  def fetch_job_offer
    @job_offer = JobOffer.find(params[:id])
  end

  def job_offer_params
    format_date
    # credits to AUDE & VICTOR
    params.require(:job_offer).permit(:job_title, :division, :location, :start_date, :contract_type, :division_description, :job_description, :expected_profile, :category)
  end

  def format_date
    # only format if start date is not a date and is not nil
    start_date = params[:job_offer][:start_date]
    if start_date.class != Date && start_date.present?
      params[:job_offer][:start_date] = Date.strptime(start_date, '%m/%d/%Y')
    end
  end

end

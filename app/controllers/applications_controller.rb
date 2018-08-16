class ApplicationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create] #travailler avec un only (pour certaines actions)

  def all
    @applications = policy_scope(Application)
    all_job_offers
    #raise
  end

  def index
    job_offer_find
    @applications = policy_scope(Application).where(job_offer_id: @job_offer.id)
  end

  def new
    @application = Application.new
    @job_offer = job_offer_find

    authorize @application
  end

  def create
    #raise
    job_offer_find
    @application = Application.new(application_params)
    @application.job_offer_id = @job_offer.id

    authorize @application
    if @application.save
      redirect_to job_offers_path
    else
      render :new
    end
  end

  def show
    application_find
    authorize @application
  end

  def edit
    application_find
    authorize @application
  end

  def update
    application_find
    @application.update(application_params)
    redirect_to application_path(@application.id)
    authorize @application
  end

  def destroy
    application_find
    @application.destroy
    authorize @application
  end



private

  def all_job_offers
    @job_offers = JobOffer.all
  end

  def job_offer_find
    @job_offer = JobOffer.find(params[:job_offer_id])
  end

  def application_find
    @application = Application.find(params[:id])
  end

  def application_params
    params.require(:application).permit(:first_name, :last_name, :email, :phone_number, :city, :street, :postcode, :country, :profile_picture, :resume, :website, :linkedin, :cover_letter, :job_offer_id, :status)
  end
end

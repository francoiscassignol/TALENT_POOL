class ApplicationsController < ApplicationController
  skip_before_action :authenticate_user! #travailler avec un only (pour certaines actions)

  def all
    @applications = Application.all
  end

  def index

    job_offer_find
    @applications = Application.where(job_offer_id: @job_offer.id)
  end

  def new
    @application = Application.new
    @job_offer = job_offer_find
  end

  def create
    #raise
    job_offer_find
    @application = Application.new(application_params)
    @application.job_offer_id = @job_offer.id

    if @application.save
      redirect_to job_offer_applications_path
    else
      render :new
    end
  end

  def show
    application_find

  end

  def edit
    application_find
  end

  def update
    application_find
    @application.update(application_params)
    redirect_to application_path(@application.id)
  end

  def destroy
    application_find
    @application.destroy
  end



private

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

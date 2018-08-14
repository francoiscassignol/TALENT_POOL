class ApplicationsController < ApplicationController
  skip_before_action :authenticate_user! #travailler avec un only (pour certaines actions)

  def index
    @applications = Application.all

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

  def application_find
    @application = Application.find(params[:id])
  end

  def application_params
    params.require(:application).permit(:first_name, :last_name, :email, :phone_number, :city, :street, :postcode, :country, :profile_picture, :resume, :website, :linkedin, :cover_letter, :job_offer_id, :status)
  end
end

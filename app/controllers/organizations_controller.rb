class OrganizationsController < ApplicationController
  def index
    @organizations = Organization.verified
  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(organization_params)

    return render 'thank_you', status: 200 if @organization.save

    render json: @organization.errors, status: 500
  end

  private

  def organization_params
    params.require(:organization).permit(:name, :address, :iban, :city_id)
  end

end

class OrganizationsController < ApplicationController
  def index
    @organizations = Organization.verified
  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(organization_params)

    return render 'thank_you', status: :ok if @organization.save

    render json: @organization.errors, status: :internal_server_error
  end

  private

  def organization_params
    params.require(:organization).permit(:name, :address, :iban, :city_id)
  end
end

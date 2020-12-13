class OrganizationsController < ApplicationController
  def index
    @pagy, @organizations = pagy(Organization.verified)
  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(organization_params)

    if @organization.save
      OrganizationMailer.suggestion_email.deliver_later if params[:created_via_suggestion_form]
      return render json: {}, status: :created
    end

    render json: @organization.errors, status: :internal_server_error
  end

  def search
    @organizations = if params[:organization_name].present?
                       Organization.verified.where('name ILIKE ?', "%#{params[:organization_name]}%")
                     else
                       Organization.verified
                     end

    @organizations = @organizations.where(city_id: params[:city_id]) if params[:city_id].present?
    @pagy, @organizations = pagy(@organizations)

    render json: { html: render_to_string(action: '_organizations_list',
                                          locals: { organizations: @organizations },
                                          formats: [:html], layout: false) }
  end

  private

  def organization_params
    params.require(:organization).permit(:name, :address, :description, :iban, :city_id)
  end
end

require 'administrate/base_dashboard'

class OrganizationDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
      city: Field::BelongsTo.with_options(
          searchable: true,
          searchable_fields: ['name']
      ),
      id: Field::Number,
      name: Field::String,
      description: Field::Text,
      address: Field::String,
      telephone: Field::String,
      email: Field::String,
      iban: Field::String,
      website: Field::String,
      swift: Field::String,
      verified: Field::Boolean,
      archived: Field::Boolean,
      created_at: Field::DateTime,
      updated_at: Field::DateTime
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [:id, :name, :description, :address, :city, :iban, :verified, :archived].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [:city, :id, :name, :description, :address, :telephone, :email, :iban, :website, :swift, :verified, :archived, :created_at, :updated_at].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [:city, :name, :description, :address, :telephone, :email, :iban, :website, :swift, :verified, :archived].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {
      archived: ->(resources) { resources.archived },
      verified: ->(resources) { resources.verified },
      unverified: ->(resources) { resources.unverified },
      unverified_and_not_archived: ->(resources) { resources.unverified_and_not_archived }
  }.freeze

  # Overwrite this method to customize how organizations are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(organization)
  #   "Organization ##{organization.id}"
  # end
end

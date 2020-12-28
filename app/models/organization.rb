# == Schema Information
#
# Table name: organizations
#
#  id         :bigint           not null, primary key
#  city_id    :bigint           not null
#  name       :string
#  address    :string
#  telephone  :string
#  email      :string
#  iban       :string
#  website    :string
#  swift      :string
#  verified   :boolean          default(FALSE)
#  archived   :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Organization < ApplicationRecord
  # Associations
  belongs_to :city

  # Validations
  validates :name, presence: true

  # Scopes
  scope :verified, -> { where(verified: true) }
  scope :unverified, -> { where(verified: false) }
  scope :unverified_and_not_archived, -> { where(verified: false, archived: false) }
  scope :archived, -> { where(archived: true) }

  # Callbacks
  # after_create :send_suggestion_notification_email

  # Virtual attributes
  attribute :created_via_suggestion_form, :boolean, default: false

  def generate_barcode
    "HRVHUB30\nHRK\n" +
      "000000000000000\n" +
      "\n" +
      "\n" +
      "\n" +
      "#{name}\n" +
      "#{address}\n" +
      "#{city.name}\n" +
      "#{iban}\n" +
      "HR00\n" +
      "#{Date.current.strftime("%d%m%Y")}\n" +
      "CHAR\n" +
      "Donacija preko doniraj.hr web stranice\n";
  end

  private

  def send_suggestion_notification_email
    return unless created_via_suggestion_form

    OrganizationMailer.suggestion_email.deliver_later
  end
end

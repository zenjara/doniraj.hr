# == Schema Information
#
# Table name: cities
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class City < ApplicationRecord
  has_many :organizations, dependent: :nullify

  scope :with_organization, -> { where(id: Organization.verified.pluck(:city_id).uniq) }
end
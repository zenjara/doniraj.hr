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
  belongs_to :city

  validates :name, presence: true

  scope :verified, -> { where(verified: true) }
  scope :unverified, -> { where(verified: false) }
  scope :unverified_and_not_archived, -> { where(verified: false, archived: false) }
  scope :archived, -> { where(archived: true) }
end
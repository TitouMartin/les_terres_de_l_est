class Artist < ApplicationRecord
# -- associations
  has_many :tracks
  has_many :albums, through: :tracks
# -- validations
  validates :name, presence: true, uniqueness: true
  validates :localisation, presence: true
end

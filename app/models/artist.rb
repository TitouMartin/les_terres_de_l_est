class Artist < ApplicationRecord
  has_many :tracks
  has_many :albums, through: :tracks
  validates :name, presence: true, uniqueness: true
  validates :localisation, presence: true
end

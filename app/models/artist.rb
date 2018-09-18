class Artist < ApplicationRecord
# -- associations
  has_many :tracks, dependent: :destroy
  has_many :albums, through: :tracks, dependent: :destroy
# -- validations
  validates :name, presence: true, uniqueness: true
  validates :localisation, presence: true

  def artist_albums
    self.albums.uniq
  end
end

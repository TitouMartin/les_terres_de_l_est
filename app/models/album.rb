class Album < ApplicationRecord
# -- associations
  has_many :tracks, dependent: :destroy
  has_many :artists, through: :tracks
# -- validations
  validates :name, presence: true
  validates :cover, presence: true
  validates :description, presence: true
end

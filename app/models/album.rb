class Album < ApplicationRecord
# -- associations
  has_many :tracks
  has_many :artists, through: :tracks
# -- validations
  validates :name, presence: true, uniqueness: true
  validates :cover, presence: true
  validates :description, presence: true
end

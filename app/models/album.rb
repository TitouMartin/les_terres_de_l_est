class Album < ApplicationRecord
  has_many :tracks
  has_many :artists, through: :tracks
  validates :name, presence: true, uniqueness: true
  validates :cover, presence: true
  validates :description, presence: true
end

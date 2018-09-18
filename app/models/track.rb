class Track < ApplicationRecord
# -- associations
  belongs_to :artist
  belongs_to :album
end

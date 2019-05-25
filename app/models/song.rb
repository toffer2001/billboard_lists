class Song < ApplicationRecord
  belongs_to :billboard
  has_one :artist, dependent: :destroy
end

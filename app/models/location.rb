class Location < ApplicationRecord
  geocoded_by :address
  after_validation :geocode

  validates :rating, :inclusion => {:in => [1,2,3,4,5]}

  belongs_to :user
end

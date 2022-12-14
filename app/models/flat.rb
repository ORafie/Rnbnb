class Flat < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address? # added geocoding

  has_many :bookings
  has_many :users, through: :bookings
end

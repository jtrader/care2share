class Listing < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  belongs_to :motorhome
  has_one :review
end

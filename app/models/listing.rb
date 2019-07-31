class Listing < ApplicationRecord
  belongs_to :motorhome
  has_one :review
end

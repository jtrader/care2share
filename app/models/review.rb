class Review < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  has_many :rreply
  validates :listing_id, uniqueness: true
end

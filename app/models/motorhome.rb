class Motorhome < ApplicationRecord
    has_one_attached :uploaded_image  
    has_many :listing
    belongs_to :user
end

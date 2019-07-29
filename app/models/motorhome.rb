class Motorhome < ApplicationRecord
    has_one_attached :uploaded_image  
    has_many :listing
end

class Comment < ApplicationRecord
  belongs_to :writer, class_name: "User"
  belongs_to :recipient, class_name: "User"
  has_many :creply
end

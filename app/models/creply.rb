class Creply < ApplicationRecord
  belongs_to :writer, class_name: "User"
  belongs_to :comment
end

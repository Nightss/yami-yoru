class User < ApplicationRecord
  has_many :comments
  has_many :images, as: :image_type
  has_and_belongs_to_many :achievements
end 
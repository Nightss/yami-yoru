class Image < ApplicationRecord
  belongs_to :image_type, polymorphic: true
end 
class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  scope :replies, -> (comment) { where(parent_id: comment) }
end 
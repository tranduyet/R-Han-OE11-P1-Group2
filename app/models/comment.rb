class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :mangak
  validates :content, presence: true, length: {maximum: 140}
  validates :body, presence: true

   default_scope -> {order(created_at: :desc)}
end

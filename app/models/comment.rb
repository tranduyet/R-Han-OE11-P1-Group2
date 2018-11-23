class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :mangak
  validates :content, presence: true, length: {maximum: 140}
  default_scope -> {order(created_at: :desc)}
  acts_as_tree order: "created_at ASC"
end

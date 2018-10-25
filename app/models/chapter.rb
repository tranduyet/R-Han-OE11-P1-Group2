class Chapter < ApplicationRecord
  belongs_to :mangak
  has_many :images
  validates :mangak_id, presence: true
end

class Chapter < ApplicationRecord
  belongs_to :mangak
  has_many :images
end

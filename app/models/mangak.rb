class Mangak < ApplicationRecord
  has_many :chapters
  belongs_to :author
  belongs_to :genre
  validates :name, presence: true,
    length: {maximum: 25}
  validates :description, presence: true, length: {maximum: 250}
  mount_uploader :picture, PictureUploader
end

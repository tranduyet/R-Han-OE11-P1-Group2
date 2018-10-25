class Mangak < ApplicationRecord
  has_many :chapters
  belongs_to :author
  belongs_to :genre
  validates :name, presence: true,
    length: {maximum: 25}
  validates :description, presence: true, length: {maximum: 250}
  validates :author_id, presence: true
  validates :genre_id, presence: true
  mount_uploader :picture, PictureUploader
end

class Image < ApplicationRecord
  belongs_to :chapter
  mount_uploader :image_link, ImageUploader
end

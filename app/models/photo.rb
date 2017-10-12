class Photo < ApplicationRecord
  belongs_to :album
  validates :title, presence: true

  mount_uploader :image, ImageUploader

end

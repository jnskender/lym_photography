class Post < ApplicationRecord
  validates :title, :image, :description, presence: true

  mount_uploader :image, PhotoUploader

end

class Photo < ApplicationRecord
  attr_accessor :image, :remote_content_url
  belongs_to :album
  validates :title, presence: true

  mount_uploader :image, ImageUploader

end

class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  include Sprockets::Rails::Helper

  storage :fog

  def store_dir
    "#{model.album.title}/#{model.title}"
  end

  def extension_whitelist
    %w[jpg jpeg gif png]
  end

  version :thumb do
    process resize_to_fill: [200, 200]
  end

  version :display do
    process resize_to_fill: [400, 400]
  end
end

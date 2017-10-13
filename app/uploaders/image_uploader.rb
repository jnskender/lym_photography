class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick
  include Sprockets::Rails::Helper

  storage :fog

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.title}"
  end

  def extension_whitelist
    %w[jpg jpeg gif png]
  end

end

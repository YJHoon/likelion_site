class ImageUploader < CarrierWave::Uploader::Base
  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  include CarrierWave::MiniMagick
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
  def filename
    "#{secure_token}#{original_filename}.#{file.extension}" if original_filename.present?
  end

  protected
  def secure_token
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.uuid)
  end

  storage :fog
  
  def extension_whitelist
    %w(jpg jpeg gif png)
  end

  version :thumb do
    process resize_to_fill: [200,200]
  end

  version :square do
    process resize_to_fill: [640,640]
  end

  version :ratio do
    process resize_to_fit: [1600,1600]
  end
end

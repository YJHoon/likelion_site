class FileUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  

  def filename
    "#{original_filename}" if original_filename.present?
  end

  protected
  def secure_token
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.uuid)
  end

  storage :fog
  # storage :file
  

  protected    
    def image?(new_file)
      new_file.content_type.start_with? 'image'
    end
end


CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV['ACCESS_KEY_ID'],                        # required
    aws_secret_access_key: ENV['SECRET_ACCESS_KEY'],                        # required
    region:                ENV["AWS_REGION"],            # optional, defaults to 'us-east-1'
    endpoint:              ENV["AWS_S3_END_POINT"] # 아시아-한국서버
  }
  config.fog_directory  = ENV["AWS_BUCKET_NAME"]            # required
  config.fog_public     = true  


  # 이미지를 가진 게시글 삭제 시 AWS S3서버에도 자동 삭제처리
  # config.remove_previously_stored_files_after_update = true
end
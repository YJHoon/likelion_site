CarrierWave.configure do |config|
  config.fog_provider = "fog/aws"                        # required
  config.fog_credentials = {
    provider: "AWS",                        # required
    aws_access_key_id: Rails.application.credentials.config.dig(:ACCESS_KEY_ID), # required
    aws_secret_access_key: Rails.application.credentials.config.dig(:SECRET_ACCESS_KEY), # required
    region: "ap-northeast-2",             # optional, defaults to 'us-east-1'
  }
  #config.fog_host = "https://#{config.fog_directory}.s3.ap-northeast-2.amazonaws.com"


  config.fog_directory = Rails.application.credentials.config.dig(:AWS_S3_BUCKET_NAME)
  config.asset_host = Rails.application.credentials.config.dig(:CLOUDFRONT_URL)
end

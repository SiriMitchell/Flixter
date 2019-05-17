

CarrierWave.configure do |config|
  config.storage = 'aws'
  config.aws_bucket = ENV.fetch('S3_SIRINOMSTERBUCKET')
  config.aws_credentials = {
    access_key_id:       ENV.fetch('AWS_ACCESS_KEY_ID'),
    secret_access_key:   ENV.fetch('AWS_SECRET_ACCESS_KEY'),
    region:              ENV.fetch('AWS_REGION'),
    stub_responses:      Rails.env.test?
  }
     
  config.aws_acl   = 'private'
end
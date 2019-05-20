
CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                   # required
  config.fog_credentials = {
    provider:               'AWS',                  # required
    aws_access_key_id:      'AWS_ACCESS_KEY',  # required
    aws_secret_access_key:  'AWS_SECRET_KEY',  # required
    use_iam_profile:        true,
    region:                 'us-east-1',
  }

  config.fog_directory = 'siri-flixter-bucket'          # required
  config.fog_public = false

end
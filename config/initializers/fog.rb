CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAQTPHFGMJ7BFNZIF6',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-2',             # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'tattooist'            # required
  
end
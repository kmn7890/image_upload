CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAISLR4EUV275A73KQ',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-1'                  # optional, defaults to 'us-east-1'
  
  }
  config.fog_directory  = 'bizricetest'                          # required

end
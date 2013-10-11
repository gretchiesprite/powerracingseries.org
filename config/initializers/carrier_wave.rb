CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],
    :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'],
    :host                   => ENV['AWS_HOST'],
    :endpoint               => ENV['AWS_ENDPOINT'],
    :region                 => ENV['AWS_REGION']
  }

  config.fog_directory  = "ppprs-content"
  config.fog_attributes = {'Cache-Control' => 'max-age=315576000'}
end

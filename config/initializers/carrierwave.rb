CarrierWave.configure do |config|
  if Rails.env.development? || Rails.env.test?
    config.storage = :file
  else
    config.storage    = :aws
    config.aws_bucket = ENV.fetch('AWS_BUCKET')

    config.aws_acl    = :public_read
    config.aws_authenticated_url_expiration = 60 * 60 * 24 * 365

    config.aws_credentials = {
      access_key_id:      ENV.fetch('AWS_PUBLIC'),
      secret_access_key:  ENV.fetch('AWS_SECRET'),
      region:             ENV.fetch('AWS_REGION')
    }
  end
end

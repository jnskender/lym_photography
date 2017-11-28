CarrierWave.configure do |c|
  c.fog_provider = 'fog/aws'
  c.fog_public    = false

  if Rails.env.production?
    c.fog_credentials = {
      :provider               => "AWS",
      :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],
      :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'],
      :region                 => "us-east-2"
    }
    c.fog_directory = ENV['AWS_BUCKET']
    c.fog_public    = false
  elsif Rails.env.development?
    c.fog_credentials = {
      :provider               => "AWS",
      :aws_access_key_id      => "AKIAI5IIWOSBRJPA2XOQ",
      :aws_secret_access_key  => "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",
      :region                 => "us-east-2"
    }
    c.fog_directory = "lym-photography-development"
  end

end

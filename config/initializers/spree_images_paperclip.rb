# config/initializers/spree_images_paperclip.rb
 
Spree.config do |config|
  attachment_config = {
    s3_credentials: {
      access_key_id: ENV.fetch("AWS_S3_ACCESS_KEY_ID"),
      secret_access_key: ENV.fetch("AWS_SECRET_ACCESS_KEY"),
      bucket: ENV.fetch("AWS_S3_BUCKET"),
    },
 
    storage:        :s3,
    s3_headers:     { "Cache-Control" => "max-age=31557600" },
    s3_protocol:    "https",
    bucket:         ENV.fetch("AWS_S3_BUCKET"),
 

 
    path:          ":rails_root/public/spree/products/:id/:style/:basename.:extension",
    default_url:   "/spree/products/:id/:style/:basename.:extension",
    default_style: "product",
  }
 
  attachment_config.each do |key, value|
    Spree::Image.attachment_definitions[:attachment][key.to_sym] = value
  end
end unless Rails.env.test?
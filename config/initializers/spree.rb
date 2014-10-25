Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( bx_loader.gif )
Rails.application.config.assets.precompile += %w( store/print.css )
Rails.application.config.assets.precompile += %w( icons.svg icons.ttf icons.eot icons.woff )
Rails.application.config.assets.precompile += %w( images/bx_loader.gif images/controls.png )



# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|

end

Spree.user_class = "Spree::User"
Paperclip.interpolates(:s3_eu_url) do |attachment, style|
"#{attachment.s3_protocol}://#{Spree::Config[:s3_host_alias]}/#{attachment.bucket_name}/#{attachment.path(style).gsub(%r{^/},"")}"
end

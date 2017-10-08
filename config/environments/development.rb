Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.seconds.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  # config.file_watcher = ActiveSupport::EventedFileUpdateChecker
#  p config.omniauth
#config.omniauth :openid_connect, {
#  name: :my_provider,
#  scope: [:openid, :profile, :email],
#  response_type: :code,
#  discovery: true, 
#  #issuer: 
#  client_options: {
#    port: 80,
#    scheme: "http",
#    host: "dev-auth.fixingthe.net",
#    identifier: '5f59d5b7a8a3465bc599eb83fc285ab7', #ENV["OP_CLIENT_ID"],
#    secret: 'b40cd6fc9fdab9daa2f908e077b61a9548a3bb9763811344c8d86814f96e4de9', #ENV["OP_SECRET_KEY"],
#    redirect_uri: "http://dev-oic.fixingthe.net/callback",
#  },
#}

end

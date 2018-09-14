require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RubicksPanel
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    Raven.configure do |config|
      config.dsn = 'https://18dc0ad1292b434dbbc71701b36b4418:53ff4e29b79c4e0da328e2da6bf3d747@sentry.io/1280757'
    end
  end
end

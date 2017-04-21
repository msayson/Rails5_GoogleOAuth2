require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Rails5GoogleOAuth2
  # Default config settings that may be overwritten
  # by specific environments (development, production, test)
  class Application < Rails::Application
    # config/environments/* takes precedence over this file.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Version of your assets, change this if you want to expire all your assets
    config.assets.version = '1.0'

    config.before_configuration do
      env_file = Rails.root.join('config', 'local_env', 'yml')
      if File.exist?(env_file)
        YAML.safe_load(File.open(env_file)).each do |key, value|
          ENV[key.to_s] = value
        end
      end
    end
  end
end

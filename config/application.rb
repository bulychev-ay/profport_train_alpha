require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ProfportTrainAplpha
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    config.generators do |generator|
      generator.test_framework :minitest
    end
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    #
    # config.generators do |generator|
    #   generator.test_framework :minitest
    # end
    config.generators do |generator|
      generator.test_framework :rspec, spec: true
    end

     config.i18n.default_locale = :ru
  end
end

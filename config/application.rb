require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module InstaClone
  class Application < Rails::Application
    config.load_defaults 5.2

    g.assets false
    g.helper false
  end
end

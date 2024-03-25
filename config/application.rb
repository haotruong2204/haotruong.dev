require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module HaotruongDev
  class Application < Rails::Application
    config.load_defaults 7.1

    config.autoload_lib(ignore: %w(assets tasks))

    config.exceptions_app = self.routes
    
    config.time_zone = "Hanoi"
    config.i18n.load_path += Dir[Rails.root.join("config",
      "locales", "**", "*.{rb,yml}").to_s]
    config.i18n.default_locale = :vi
    config.assets.paths << Rails.root.join("app", "assets", "images")
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
    config.autoload_paths += %w(#{config.root}/app/models/ckeditor)
  end
end

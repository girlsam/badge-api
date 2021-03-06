require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module BadgeApi
  class Application < Rails::Application
    
    config.generators do |g|
      g.test_framework :rspec, fixture: true
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
      g.view_specs false
      g.helper_specs false
      g.stylesheets = false
      g.javascripts = false
      g.helper = false
    end

    config.autoload_paths += %W(\#{config.root}/lib)

  end
end

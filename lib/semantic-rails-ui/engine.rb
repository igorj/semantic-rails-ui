require 'semantic-ui-sass'
require 'simple_form'

module SemanticRailsUi
  class Engine < ::Rails::Engine
    initializer :append_dependent_assets_path, :group => :all do |app|
      engine_root = Semantic::Ui::Sass::Rails::Engine.root
      app.config.assets.paths.push File.join(engine_root, 'app/assets/javascripts')
      app.config.assets.paths.push File.join(engine_root, 'app/assets/stylesheets')
    end

    config.app_generators do |g|
      g.templates.unshift File::expand_path('../../templates', __FILE__)
      g.stylesheets false
      g.javascripts false
      g.helper false
      g.test_framework false
    end
  end
end

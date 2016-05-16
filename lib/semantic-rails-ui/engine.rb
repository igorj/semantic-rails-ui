require 'semantic-ui-sass'
require 'simple_form'
require 'handlebars_assets'

module SemanticRailsUi
  class Engine < ::Rails::Engine
    initializer :append_dependent_assets_path, :group => :all do |app|
      engine_root = Semantic::Ui::Sass::Rails::Engine.root
      app.config.assets.paths.push File.join(engine_root, 'app/assets/javascripts')
      app.config.assets.paths.push File.join(engine_root, 'app/assets/stylesheets')
    end
  end
end

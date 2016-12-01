module SemanticRailsUi
  module NavHelper
    # Navigation link that adds active class for the currently active url
    def ui_nav_link_to(title = nil, url = nil, options = {}, &block)
      options, url, title = url, title, capture(&block) if block_given?
      options = { class_active: 'active item', class_inactive: 'item' }.merge(options || {})
      options = options.merge(active: :exact) if url == root_path
      active_link_to title, url, options
    end
  end
end
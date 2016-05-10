module SemanticRailsUi
  module UiHelper
    # <h1 class="ui header">
    #   <i class="ICON_NAME icon"></i>
    #   <div class="content">TITLE</div>
    # </h1>
    def ui_icon_header(title, icon_name)
      content_tag :h1, class: "ui header" do
        content_tag(:i, '', class: "#{icon_name} icon") + content_tag(:div, title, class: "content")
      end
    end
  end
end
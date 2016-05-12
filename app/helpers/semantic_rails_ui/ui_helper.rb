module SemanticRailsUi
  module UiHelper
    # <h1 class="ui header">
    #   <i class="ICON_NAME icon"></i>
    #   <div class="content">TITLE</div>
    # </h1>
    def ui_icon_header(title, icon_name)
      content_tag :h1, class: "ui header" do
        ui_icon(icon_name) + content_tag(:div, title, class: "content")
      end
    end

    def ui_flash_messages(options = {})
      options.merge(id: "messages", class: "messages")
      content_tag :div, options do
        messages = ""
        flash.each do |name, msg|
          messages += content_tag :div, class: "ui #{name} message" do
            ui_icon("close") + content_tag(:div, class: "ui header") do
              icon_name = name == 'error' || name == 'warning' ? :warning : :info
              ui_icon("#{icon_name} circle") + content_tag(:div, msg, class: "content")
            end
          end
        end
        messages.html_safe
      end
    end

    def ui_icon(icon_name)
      content_tag(:i, '', class: "#{icon_name} icon")
    end
  end
end
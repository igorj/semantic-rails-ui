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

    # supported flash message types: :error, :success, :warning, :info
    # todo: add support for :alert and :notice
    def ui_flash_messages(options = {})
      merged_options = { id: "messages", class: "messages" }.merge(options)
      content_tag :div, merged_options do
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

    # renders a semantic-ui icon
    def ui_icon(icon_name)
      content_tag(:i, '', class: "#{icon_name} icon")
    end

    # renders a delete link with semantic-ui confirmation dialog instead of default js confirmation
    def ui_delete_link(button_text, url, message, remote = false)
      link_to url, class: "ui red tiny compact basic button", method: :delete,
              data: { confirm: message, 'confirm-title' => button_text }, remote: remote do
        ui_icon("trash outline") + button_text
      end
    end

    # renders a simple delete link without text with semantic-ui confirmation dialog instead of default js confirmation
    def ui_simple_delete_link(url, message, remote = false)
      link_to url, method: :delete,
              data: { confirm: message, 'confirm-title' => "Delete" }, remote: remote do
        ui_icon("trash outline")
      end
    end
  end
end
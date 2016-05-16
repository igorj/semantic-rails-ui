$(document).bind 'confirm', (event) ->
  element = $(event.target)
  message = element.data("confirm")
  title = element.data("confirm-title")
  confirm_dialog = """
    <div class="ui-confirm-dialog ui small modal">
      <div class="header">#{title}</div>
      <div class="content">#{message}</div>
      <div class="actions">
        <div class="ui red basic cancel button">
          <i class="remove icon"></i>No
        </div>
        <div class="ui green ok button">
          <i class="checkmark icon"></i>Yes
        </div>
      </div>
    </div>
  """
  # remove old confirm dialog from the body
  $('.ui-confirm-dialog').parent().remove()
  # attach new confirm dialog to the body
  $('body').append(confirm_dialog)
  $('.ui-confirm-dialog').modal(
    closable: false
    duration: 100
    transition: 'fade'
    onApprove: ->
# remove data-confirm
      element.data 'confirm', null
      # re-click link
      element.trigger 'click.rails'
  ).modal('show')
  # Prevent rails from popping up a browser box, we've already done the work
  return false

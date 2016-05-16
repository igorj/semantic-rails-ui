jQuery ->
  $.rails.confirm = (message) ->
    confirm_dialog = """
      <div id="ui-confirm-dialog" class="ui small modal">
        <div class="header">Confirmation dialog</div>
        <div class="content">#{message}</div>
        <div class="actions">
          <div class="ui red basic cancel inverted button">
            <i class="remove icon"></i>No
          </div>
          <div class="ui green ok inverted button">
            <i class="checkmark icon"></i>Yes
          </div>
        </div>
      </div>
    """
    $('body').append(confirm_dialog)
    $('#ui-confirm-dialog').modal(
      closable: false
      onApprove: -> return true
      onDeny: -> return false
    ).modal('show')


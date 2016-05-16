jQuery ->
  $.rails.confirm = (message) ->
    $('body').append HandlebarsTemplates['templates/confirm'](message: message)
    $('ui-confirm-dialog').modal(
      'closable: false'
      onApprove: -> return true
      onDeny: -> return false
    ).modal('show')


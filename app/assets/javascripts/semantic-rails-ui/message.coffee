jQuery ->
  $('.message .close').on 'click', -> $(this).closest('.message').transition('fade')

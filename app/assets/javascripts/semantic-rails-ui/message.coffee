$(document).on 'ready page:load', ->
  $('.message .close').bind 'click', -> $(this).closest('.message').transition('fade')

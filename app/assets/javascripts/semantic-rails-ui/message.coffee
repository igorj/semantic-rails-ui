$(document).on 'ready turbolinks:load', ->
  $('.message .close').bind 'click', -> $(this).closest('.message').transition('fade')

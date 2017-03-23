$(document).on 'ready turbolinks:load', ->
  $('.ui.menu .ui.dropdown').dropdown(on: 'hover')
  $('form .ui.dropdown').dropdown()

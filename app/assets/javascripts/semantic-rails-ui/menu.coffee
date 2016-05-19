$(document).on 'ready page:load', ->
  $('.ui.menu .ui.dropdown').dropdown(on: 'hover')
  $('form .ui.dropdown').dropdown()

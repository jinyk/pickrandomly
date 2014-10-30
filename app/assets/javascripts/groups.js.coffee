# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  # Hide password field if publically listed
  $('.js-public').on('change', ->
    if $(this).children('input:checked').length > 0
      # Publically listed
      $('.js-password').hide()
    else
      $('.js-password').show()
  )

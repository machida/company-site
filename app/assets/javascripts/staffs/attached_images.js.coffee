$ ->
  $('.js-ajax-attached-images').on "ajax:success", (data, status, xhr) ->
    $('#attached-images').html status
  $('.js-open-attached-images').click ->
    $('#attached-images').toggleClass('is-opend')
  $('.js-open-attached-images').click ->
    $('#attached-images').toggleClass('is-closed')

$ ->
  $('a').hover (->
    $(this).addClass('is-hover')
  ), ->
    $(this).removeClass('is-hover')

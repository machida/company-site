$ ->
  globalNavPosition = $(".global-nav")
  position = globalNavPosition.position()
  $(window).scroll ->
    if scrollY > position.top
      $('.global-nav').addClass('is-fixed')
      $('.page__title').addClass('is-actived')
      $('.global-nav .js-hidden').removeClass('is-hidden')
    else
      $('.global-nav').removeClass('is-fixed')
      $('.page__title').removeClass('is-actived')
      $('.global-nav .js-hidden').addClass('is-hidden')

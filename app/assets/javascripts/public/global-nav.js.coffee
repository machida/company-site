$ ->
  $(window).scroll ->
    globalNavPosition = $(".global-nav")
    headerHeight = $('.header').height()
    heroHeight = $('.hero').height()
    position = headerHeight + heroHeight
    scrollY = $(this).scrollTop()
    if scrollY > position
      $('.global-nav').addClass('is-fixed')
      $('.page__title').addClass('is-actived')
      $('.global-nav .js-hidden').removeClass('is-hidden')
    else
      $('.global-nav').removeClass('is-fixed')
      $('.page__title').removeClass('is-actived')
      $('.global-nav .js-hidden').addClass('is-hidden')

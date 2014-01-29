$ ->
  getScrollTop = ->
    scrollBottom = $(window).scrollTop() + $(window).height()
    $(".header").text scrollBottom + "px"
    if scrollBottom >= lastTop
      $(".header").text "lastまでスクロールされました"
    else
      $(".header").text scrollBottom + "px"
  scrollBottom = undefined
  lastTop = $("#last").offset().top
  $(window).on "load scroll resize", getScrollTop
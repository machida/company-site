$ ->
  pageheight = undefined
  footerheight = undefined
  pageheight = $(".page").outerHeight(true)
  footerheight = $(".footer").outerHeight(true)
  $(".js-content-height").css "height", pageheight + footerheight + "px"

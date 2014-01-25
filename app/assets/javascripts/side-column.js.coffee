$ ->
  pageheight = undefined
  footerheight = undefined
  pageheight = $(".page").outerHeight(true)
  footerheight = $(".footer").outerHeight(true)
  $(".side-column").css "height", pageheight + footerheight + "px"

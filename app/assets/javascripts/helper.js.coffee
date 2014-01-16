$ ->
  i = $.browser.version.original
  i = Math.floor(i)
  if $.browser.original is "msie"
    $("html").addClass $.browser.original + "-" + i
  else
    $("html").addClass $.browser.original
  $("html").addClass $.platform.original
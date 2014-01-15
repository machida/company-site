$ ->
  $("input").bind "keydown keyup keypress change", ->
    thisValue = $(this).text()
    $(this).addClass("active")
    if thisValue = ""
      -> $(this).removeClass("active")
    else
      -> $(this).addClass("active")

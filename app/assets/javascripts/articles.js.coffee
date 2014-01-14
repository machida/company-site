$ ->
  $("input").bind "keydown keyup keypress change", ->
    thisValue = $(this).text()
    if thisValue == nill
      $(this).removeClass("active")
    else
      $(this).addClass("active")

$(document).cheatCode
  code: '80,79,83,73,84,73,79,78'
  activated: ->
    $(".js-positions").removeClass "is-hidden"
    $(".js-positions").addClass "is-shown"

$(document).cheatCode
  code: '79,80,69,78'
  activated: ->
    $(".js-cheatCode-shown").removeClass "is-hidden"
    $(".js-cheatCode-shown").addClass "is-shown"

$ ->
  $(".js-ajax-attached-images").on "ajax:success", (data, status, xhr) ->
    $("#attached-images").html status

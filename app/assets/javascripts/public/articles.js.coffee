$(document).ready ->
  $container = $("#container")
  $container.imagesLoaded ->
  $container.masonry
    itemSelector: ".articles-article"
  $("#container").infinitescroll
    navSelector: "nav.pagination" # selector for the paged navigation (it will be hidden)
    nextSelector: "nav.pagination a[rel=next]" # selector for the NEXT link (to page 2)
    itemSelector: ".articles-article" # selector for all items you'll retrieve
    loading:
      msgText: '<div class="loading"><i class="fa fa-spinner fa-spin"></i></div>'
      finishedMsg: '<div class="loading"><i class="fa fa-check"></div>'
  , (newElements) ->

    # hide new items while they are loading
    $newElems = $(newElements).css(opacity: 0)

    # ensure that images load before adding to masonry layout
    $newElems.imagesLoaded ->

      # show elems now they're ready
      $newElems.animate opacity: 1
      $("#container").masonry "appended", $newElems, true

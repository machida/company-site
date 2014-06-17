$ ->
  $("#container").infinitescroll
    navSelector: "nav.pagination" # selector for the paged navigation (it will be hidden)
    nextSelector: "nav.pagination a[rel=next]" # selector for the NEXT link (to page 2)
    itemSelector: ".articles-article" # selector for all items you'll retrieve

  codeClass = $('pre').find('code').hasClass()
  $('pre').addClass(codeClass)

$(document).ready ->
  $(".js-markdown-article").markdown textarea: $("#article_body")
  $(".js-markdown-page").markdown textarea: $("#page_body")

$(document).ready ->
  $('.js-markdown-article').markdown textarea: $('#article_body')
  $('.js-markdown-page').markdown textarea: $('#page_body')
  $('.js-markdown-snippet').markdown textarea: $('#snippet_body')
  $('.js-markdown-service').markdown textarea: $('#service_body')
  $('.js-markdown-staff').markdown textarea: $('#staff_body')

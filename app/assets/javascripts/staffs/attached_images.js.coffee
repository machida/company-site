$ ->
  $('.js-ajax-attached-images').on "ajax:success", (data, status, xhr) ->
    $('#attached-images').html status
  $('.js-open-attached-images').click ->
    $('#attached-images').toggleClass('is-opend')
  $('.js-open-attached-images').click ->
    $('#attached-images').toggleClass('is-closed')

$ ->
  $('#attached_image_image').ready ->
    $('#attached_image_image').fileupload
      dataType: 'json'
      dropZone: $('#upload')
      console.log("aaaa")
      start: ->
        console.log("aaaaaaaaaaaaaa")
        $('#progress .bar').css 'width', '0%'
        $('#preview').html("");
      add: (e, data) ->
        $('#upload').html("<p>Uploading...</p>");
        data.submit()
      progressall: (e, data) ->
        progress = parseInt(data.loaded / data.total * 100, 10)
        $('#progress .bar').animate
          'width': progress + '%'
      done: (e, data) ->
        $('<img src="' + data.result.image_url + '">' + " ").appendTo('#preview');
        $('#upload').html("<p>Upload finished.</p>");
        $('#progress .bar').animate
          'width': '100%'

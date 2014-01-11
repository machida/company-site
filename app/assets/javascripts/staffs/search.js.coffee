$ ->
  $("#js-search").on "keyup", -> ##searchに入力されるたびに反映
    pattern = $(this).val() #検索文字列を取得
    $(".main-table__tr").each ->
      str = $(this).children(".js-search-target").text() #検索対象を取得
      #検索に引っかかった場合表示
      if str.match(pattern)
        $(this).show()
      #検索対象以外隠す
      else
        $(this).hide()
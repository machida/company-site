initialize = ->
  feedurl = "http://googlejapan.blogspot.com/atom.xml"
  feed = new google.feeds.Feed(feedurl)
  feed.load (result) ->
    unless result.error
      container = document.getElementById("feed")
      htmlstr = ""
      htmlstr += "<h2><a href=\"" + result.feed.link + "\">" + result.feed.title + "</a></h2>"
      i = 0

      while i < result.feed.entries.length
        entry = result.feed.entries[i]
        htmlstr += "<h3><a href=\"" + entry.link + "\">" + entry.title + "</a></h3>"
        htmlstr += "<p>" + entry.contentSnippet + "</p>"
        pdate = new Date(entry.publishedDate)
        strdate = (pdate.getMonth() + 1) + "月" + pdate.getDate() + "日"
        htmlstr += "<p>日付 :" + strdate + "</p>"
        i++
      container.innerHTML = htmlstr
    else
      alert result.error.code + ":" + result.error.message
    return

  return
google.load "feeds", "1"
google.setOnLoadCallback initialize

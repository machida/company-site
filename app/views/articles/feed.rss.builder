xml.instruct! :xml, :version => "1.0", :encoding => "UTF-8"
xml.rss("version"    => '2.0',
        "xmlns:dc"   => "http://purl.org/dc/elements/1.1/",
        "xmlns:atom" => "http://www.w3.org/2005/Atom") do
  xml.channel do
    xml.title 'FJORD, LLC.'
    xml.description '合同会社フィヨルド'
    xml.link root_url
    xml.language "ja-ja"
    xml.ttl "40"
    xml.pubDate(Time.now.strftime("%a, %d %b %Y %H:%M:%S %Z"))

    @articles.each do |article|
      xml.item do
        xml.title article.title
        xml.link article_url(article)
        xml.description article.body
        xml.guid article_url(article)
        xml.pubDate article.created_at
        xml.author "FJORD, LLC."
      end
    end
  end
end
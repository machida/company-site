require 'rubygems'
require 'nokogiri'
require 'open-uri'
class AddArticlesData < ActiveRecord::Migration
  def up
    Article.delete_all
    articles = Nokogiri::XML(File.open("/Users/machida/Sites/company-site/db/old-data.xml"))

    articles.css('item').each do |node|
      children = node.children

      Article.create(
        title: node['title'],
        body: node['content:encoded'],
        id: node['wp:post_id'],
      )

    end
  end

  def down
  end
end
require 'rubygems'
require 'nokogiri'
require 'open-uri'

class AddArticlesData < ActiveRecord::Migration
  def up
    Article.delete_all
    articles = Nokogiri::XML(File.open("#{Rails.root}/db/old-data.xml"))
    articles.encoding = "utf-8"
    @articles = articles.xpath('//item')

    articles.css('item').each do |item|
      children = item.children
      next if item.xpath('title').text.blank?
      Article.create!(
        title: item.xpath('title').text,
        body: item.xpath('body').text,
        id: item.xpath('post_id').text,
        staff_id: item.xpath('creator').text,
        created_at: item.xpath('post_date').text,
        category_id: item.xpath('category').text,
        published: item.xpath('status').text
      )

    end
  end

  def down
  end
end

class HomeController < ApplicationController
  def index
    @articles = Article.order('id desc').limit(10)
    @snippet_home_about = Snippet.find_by slug: 'home_about'
    @snippet_home_access = Snippet.find_by slug: 'home_access'
    @snippet_home_overview = Snippet.find_by slug: 'home_overview'
  end

end

class PostsController < ApplicationController
  def index
    @articles = Article.all
  end
end

class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    if params[:tag]
      @articles = Article.tagged_with(params[:tag])
    else
      @articles = Article.all
    end
  end

  def show
    @article = Article.find(params[:id])
  end

end

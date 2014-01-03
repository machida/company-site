class ArticlesController < ApplicationController
  def index
    if params[:tag]
      @articles = Article.tagged_with(params[:tag])
    else
      @articles = Article.page(params[:page]).per(10).order(:id)
    end
  end

  def show
    @article = Article.find(params[:id])
  end

end

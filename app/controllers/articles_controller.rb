class ArticlesController < ApplicationController
  def index
    if params[:tag]
      @articles = Article.published.tagged_with(params[:tag]).order('created_at desc').page(params[:page]).per(12).order(:id)
    elsif params[:search]
      @articles = Article.published.search(params[:search])
      render 'search/index'
    else
      @articles = Article.published.page(params[:page]).order('created_at desc').per(12).order(:id)
    end
  end

  def show
    @article = Article.published.find(params[:id])
  end

  def feed
    @articles = Article.order("created_at DESC").limit(20)
    respond_to do |format|
      format.rss { render :layout => false } #index.rss.builder
    end
  end

  def tag
    @articles = Article.published.tagged_with(params[:name]).order('id desc')
    @tags = Article.published.tag_counts_on(:tags)
    render 'tags/index'
  end

end

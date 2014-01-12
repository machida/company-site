class ArticlesController < ApplicationController
  def index
    if params[:tag]
      @articles = Article.published.tagged_with(params[:tag]).order('created_at desc').page(params[:page]).per(12).order(:id)
      add_breadcrumb "home", root_path
      add_breadcrumb params[:tag], tag_path
    elsif params[:search]
      @articles = Article.published.search(params[:search])
      render 'search/index'
      add_breadcrumb "home", root_path
      add_breadcrumb params[:search], articles_path
    else
      @articles = Article.published.page(params[:page]).order('created_at desc').per(12).order(:id)
      add_breadcrumb "home", root_path
      add_breadcrumb "articles", articles_path
    end
  end

  def show
    @article = Article.published.find(params[:id])
    add_breadcrumb "home", root_path
    add_breadcrumb @article.category.name, "/categories/#{@article.category.name}"
    add_breadcrumb @article.title, @article_path
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

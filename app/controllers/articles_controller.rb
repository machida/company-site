class ArticlesController < ApplicationController
  def index
    if params[:tag]
      @articles = Article.published.tagged_with(params[:tag]).order('created_at desc').page(params[:page]).per(12)
      add_breadcrumb "home", root_path
      add_breadcrumb params[:tag], tag_path
    elsif params[:search]
      @articles = Article.published.order('created_at desc').search(params[:search])
      @articles = Kaminari.paginate_array(@articles).page(params[:page]).per(12)
      render 'articles/index'
      add_breadcrumb "home", root_path
      add_breadcrumb params[:search], articles_path
    else
      @articles = Article.published.page(params[:page]).order('created_at desc').per(12)
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
    @articles = Article.order("created_at desc").limit(20)
    respond_to do |format|
      format.rss { render :layout => false } #index.rss.builder
    end
  end

  def tag
    @articles = Article.published.tagged_with(params[:name]).order("created_at desc")
    @tags = Article.published.tag_counts_on(:tags)
    render 'tags/index'
  end

end

class ArticlesController < ApplicationController
  def index
    if params[:tag]
      @articles = Article.tagged_with(params[:tag]).order('id desc').page(params[:page]).per(12).order(:id)
    elsif params[:month]
      date = Date.parse("1 #{params[:month]}")  # to get the first day of the month
      @articles = Article.where(created_at: date..date.end_of_month).order('id desc').page(params[:page]).per(12).order(:id)  # get posts for the month
    elsif params[:search]
      @articles = Article.search(params[:search]).order('id desc')
      render 'search/index'
    else
      @articles = Article.all.page(params[:page]).order('id desc').per(12).order(:id)
    end

  end

  def show
    @article = Article.find(params[:id])
  end

  def feed
    @articles = Article.order("created_at DESC").limit(20)
    respond_to do |format|
      format.rss { render :layout => false } #index.rss.builder
    end
  end

  def tag
    @articles = Article.tagged_with(params[:name]).order('id desc')
    @tags = Article.tag_counts_on(:tags)
    render 'tags/index'
  end

end

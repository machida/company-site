class ArticlesController < ApplicationController
  def index
    if params[:tag]
      @articles = Article.tagged_with(params[:tag]).page(params[:page]).per(12).order(:id)
    elsif params[:month]
      @articles_by_month = Article.find(:all, :order => "created_at DESC").group_by { |article| article.created_at.strftime("%B %Y") }
      date = Date.parse("1 #{params[:month]}")  # to get the first day of the month
      @articles = Article.where(:created_at => date..date.end_of_month).page(params[:page]).per(12).order(:id)  # get posts for the month
    else
      @articles = Article.page(params[:page]).per(12).order(:id)
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

end

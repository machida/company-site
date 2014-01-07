class CategoriesController < ApplicationController
  def index
    @categories = Category.find(:all, :include => :posts)
    @articles = Article.all(:select => "title, id, created_at", :order => "created_at DESC").group_by { |t| t.created_at.beginning_of_month }
  end

  def show
    @category = Category.friendly.find(params[:id])
    @articles = @category.articles.order('id desc').page(params[:page]).per(12).order(:id)
  end

end

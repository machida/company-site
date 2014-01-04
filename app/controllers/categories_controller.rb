class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @categories = Category.find(:all, :include => :posts)
  end

  def show
    @category = Category.friendly.find(params[:id])
    @articles = @category.articles.where("published = ?", true).page(params[:page]).per(12).order(:id)
  end

end

class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @categories = Category.find(:all, :include => :posts)
  end

  def show
    @category = Category.friendly.find(params[:id])
    @articles = @category.articles.order('id desc').page(params[:page]).per(12).order(:id)
  end

end

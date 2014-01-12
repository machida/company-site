class CategoriesController < ApplicationController
  def index
    @categories = Category.find(:all, :include => :articles)
    @articles = Article.all(:select => "title, id, created_at", :order => "created_at DESC").group_by { |t| t.created_at.beginning_of_month }
    add_breadcrumb "home", root_path
    add_breadcrumb "categories", categories_path
  end

  def show
    @category = Category.friendly.find(params[:id])
    @articles = @category.articles.order('id desc').page(params[:page]).per(12).order(:id)
    add_breadcrumb "home", root_path
    add_breadcrumb "categories", categories_path
    add_breadcrumb @category.name, categories_path
  end

end

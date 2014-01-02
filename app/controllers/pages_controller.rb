class PagesController < PostsController

  def index
    @pages = Page.all
  end

  def show
    @page = Page.friendly.find(params[:id])
    @articles = Article.order('id desc').limit(10)
  end

  private
    def set_page
      @page = Page.friendly.find(params[:id])
    end

    def page_params
      params.require(:page).permit(:title, :body, :slug)
    end
end

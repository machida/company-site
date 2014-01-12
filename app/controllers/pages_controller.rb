class PagesController < PostsController

  def show
    @page = Page.friendly.find(params[:id])
    add_breadcrumb "home", root_path
    add_breadcrumb @page.title, page_path
  end

  private
    def set_page
      @page = Page.friendly.find(params[:id])
    end

    def page_params
      params.require(:page).permit(:title, :body, :slug)
    end
end

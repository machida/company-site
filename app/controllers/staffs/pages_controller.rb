class Staffs::PagesController < StaffsController

  def index
    if params[:published] == "false"
      @pages = Page.unpublished.order('id desc').all
    elsif params[:published] == "true"
      @pages = Page.published.order('id desc').all
    else
      @pages = Page.all
    end
  end

  def show
    @page = Page.friendly.find(params[:id])
  end

  def new
    @page = Page.new
  end

  def edit
    @page = Page.friendly.find(params[:id])
  end

  def create
    @page = Page.new(page_params)

    respond_to do |format|
      if @page.save
        format.html { redirect_to staffs_pages_path, notice: 'page was successfully created.' }
        format.json { render action: 'show', status: :created, location: @page }
      else
        format.html { render action: 'new' }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @page = Page.friendly.find(params[:id])
    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to staffs_pages_path, notice: 'article was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @page = Page.friendly.find(params[:id])
    @page.destroy
    respond_to do |format|
      format.html { redirect_to staffs_pages_path }
      format.json { head :no_content }
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = page.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit(:title, :body, :slug)
    end
end
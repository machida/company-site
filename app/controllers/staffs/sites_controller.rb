class Staffs::SitesController < StaffsController

  def index
    @sites = Site.all
  end

  def show
    @site = Site.friendly.find(params[:id])
  end

  def new
    @site = Site.new
  end

  def edit
    @site = Site.friendly.find(params[:id])
  end

  def create
    @site = Site.new(site_params)

    respond_to do |format|
      if @site.save
        format.html { redirect_to staffs_pages_path, notice: 'article was successfully created.' }
        format.json { render action: 'show', status: :created, location: @site }
      else
        format.html { render action: 'new' }
        format.json { render json: @site.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @site = Site.friendly.find(params[:id])
    respond_to do |format|
      if @site.update(site_params)
        format.html { redirect_to staffs_pages_path, notice: 'site was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @site.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @site = Site.friendly.find(params[:id])
    @site.destroy
    respond_to do |format|
      format.html { redirect_to staffs_pages_path }
      format.json { head :no_content }
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @site = Site.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def site_params
      params.require(:site).permit(:title, :sub_title, :body)
    end
end
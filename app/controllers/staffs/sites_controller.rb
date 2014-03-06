class Staffs::SitesController < StaffsController

  def show
    @site = Site.friendly.find(params[:id])
  end

  def edit
    @site = Site.friendly.find(params[:id])
  end

  def update
    @site = Site.friendly.find(params[:id])
    respond_to do |format|
      if @site.update(site_params)
        format.html { redirect_to staffs_site_path(@site), notice: 'site was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @site.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @site = Site.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def site_params
      params.require(:site).permit(:title, :sub_title, :body, :meta_keywords, :meta_description)
    end
end
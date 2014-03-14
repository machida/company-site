class Staffs::AttachedImagesController < StaffsController
  respond_to :js, :json, :html, :xml
  def index
    @attached_images = AttachedImage.all
  end

  def show
    @attached_image = AttachedImage.find(params[:id])
  end

  def new
    @attached_image = AttachedImage.new
    #respond_with(@attached_image, :layout => false)
    respond_with do |format|
      format.html { render :layout => ! request.xhr? }
    end
  end

  def edit
    @attached_image = AttachedImage.find(params[:id])
  end

  def create
    @attached_image = AttachedImage.create(params[:attached_image])
    sleep 1 if params[:pause]
    respond_with(@attached_image)
    #redirect_to comments_path unless request.xhr?
    respond_to do |format|
      if @attached_image.save
        format.html { redirect_to staffs_attached_images_path, notice: 'attached_image was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    @attached_image = AttachedImage.find(params[:id])
    respond_to do |format|
      if @attached_image.update(attached_image_params)
        format.html { redirect_to staffs_attached_images_path, notice: 'article was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @attached_image = AttachedImage.find(params[:id])
    @attached_image.destroy
    respond_to do |format|
      format.html { redirect_to staffs_attached_images_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attached_image
      @attached_image = AttachedImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attached_image_params
      params.require(:attached_image).permit(:image, :alt, :created_at)
    end
end
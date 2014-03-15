class Staffs::AttachedImagesController < StaffsController

  def index
    @attached_images = AttachedImage.all
  end

  def show
  end

  def new
    @attached_image = AttachedImage.new
  end

  def edit
  end

  def create
    @attached_image = AttachedImage.new(attached_image_params)

    respond_to do |format|
      if @attached_image.save
        format.html { redirect_to staffs_attached_images_path, notice: 'Attached image was successfully created.' }
        format.json { render action: 'show', status: :created, location: @attached_image }
      else
        format.html { render action: 'new' }
        format.json { render json: @attached_image.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @attached_image.update(attached_image_params)
        format.html { redirect_to @attached_image, notice: 'Attached image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @attached_image.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @attached_image.destroy
    respond_to do |format|
      format.html { redirect_to staffs_attached_images_url }
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
      params.require(:attached_image).permit(:image, :alt)
    end
end

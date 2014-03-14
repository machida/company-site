class AttachedImagesController < ApplicationController
  before_action :set_attached_image, only: [:show, :edit, :update, :destroy]

  # GET /attached_images
  # GET /attached_images.json
  def index
    @attached_images = AttachedImage.all
  end

  # GET /attached_images/1
  # GET /attached_images/1.json
  def show
  end

  # GET /attached_images/new
  def new
    @attached_image = AttachedImage.new
  end

  # GET /attached_images/1/edit
  def edit
  end

  # POST /attached_images
  # POST /attached_images.json
  def create
    @attached_image = AttachedImage.new(attached_image_params)

    respond_to do |format|
      if @attached_image.save
        format.html { redirect_to @attached_image, notice: 'Attached image was successfully created.' }
        format.json { render action: 'show', status: :created, location: @attached_image }
      else
        format.html { render action: 'new' }
        format.json { render json: @attached_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attached_images/1
  # PATCH/PUT /attached_images/1.json
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

  # DELETE /attached_images/1
  # DELETE /attached_images/1.json
  def destroy
    @attached_image.destroy
    respond_to do |format|
      format.html { redirect_to attached_images_url }
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

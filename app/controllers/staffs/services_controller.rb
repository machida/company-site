class Staffs::ServicesController < StaffsController

  def index
    if params[:published] == "false"
      @services = Service.unpublished.order('id desc').all
    elsif params[:published] == "true"
      @services = Service.published.order('id desc').all
    else
      @services = Service.order('id desc').all
    end
  end

  def show
    @service = Service.friendly.find(params[:id])
  end

  def new
    @service = Service.new
  end

  def edit
    @service = Service.find(params[:id])
  end

  def create
    @service = Service.new(service_params)

    respond_to do |format|
      if @service.save
        format.html { redirect_to staffs_services_path, notice: 'service was successfully created.' }
        format.json { render action: 'show', status: :created, location: @service }
      else
        format.html { render action: 'new' }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @service = Service.find(params[:id])
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to staffs_services_path, notice: 'service was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    respond_to do |format|
      format.html { redirect_to staffs_services_path }
      format.json { head :no_content }
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      params.require(:service).permit(:title, :body, :slug, :created_at, :published)
    end
end

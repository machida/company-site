class ServicesController < PostsController

  def index
    @services = Service.all
  end

  def show
    @service = Service.friendly.find(params[:id])
  end

  private
    def set_service
      @service = Service.friendly.find(params[:id])
    end

    def service_params
      params.require(:service).permit(:title, :body, :slug)
    end
end

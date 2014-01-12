class ServicesController < PostsController

  def index
    @services = Service.all
    add_breadcrumb "home", root_path
    add_breadcrumb "service", services_path
  end

  def show
    @service = Service.friendly.find(params[:id])
    add_breadcrumb "home", root_path
    add_breadcrumb "service", services_path
    add_breadcrumb @service.title, service_path
  end

  private
    def set_service
      @service = Service.friendly.find(params[:id])
    end

    def service_params
      params.require(:service).permit(:title, :body, :slug)
    end
end

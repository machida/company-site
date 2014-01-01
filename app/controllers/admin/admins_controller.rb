class Admin::RegistrationsController < Devise::RegistrationsController
  prepend_before_filter :require_no_authentication, :only => [ :cancel]
  prepend_before_filter :authenticate_scope!, :only => [:new, :create ,:edit, :update, :destroy]

  def index
    @admins = Admin.all
  end

  def show
    @admin = Admin.find(params[:id])
  end

  def new
    @admin = Admin.new
  end

  def edit
    @admin = Admin.find(params[:id])
  end

  def create
    @admin = Admin.new(admin_params)

    respond_to do |format|
      if @admin.save
        format.html { redirect_to admin_articles_path, notice: 'admin was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admin }
      else
        format.html { render action: 'new' }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @admin = Admin.find(params[:id])
    respond_to do |format|
      if @article.update(admin_params)
        format.html { redirect_to admin_articles_path, notice: 'admin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admin.errors, status: :unprocessable_admin }
      end
    end
  end

  def destroy
    @admin = Admin.find(params[:id])
    @admin.destroy
    respond_to do |format|
      format.html { redirect_to admin_admins_path }
      format.json { head :no_content }
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @admin = article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_params
      params.require(:admin).permit(:email, :encrypted_password, :name)
    end
end

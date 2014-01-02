class Admin::AuthorsController < AdminController
  prepend_before_filter :require_no_authentication, :only => [ :cancel]
  prepend_before_filter :authenticate_scope!, :only => [:new, :create ,:edit, :update, :destroy]

  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def edit
    @author = Author.find(params[:id])
  end

  def create
    @author = Author.new(admin_params)

    respond_to do |format|
      if @author.save
        format.html { redirect_to admin_authors_path, notice: 'admin was successfully created.' }
        format.json { render action: 'show', status: :created, location: @author }
      else
        format.html { render action: 'new' }
        format.json { render json: @author.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @author = Aunthor.find(params[:id])
    respond_to do |format|
      if @author.update(admin_params)
        format.html { redirect_to admin_authors_path, notice: 'admin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @author.errors, status: :unprocessable_admin }
      end
    end
  end

  def destroy
    @author = Admin.find(params[:id])
    @author.destroy
    respond_to do |format|
      format.html { redirect_to admin_admins_path }
      format.json { head :no_content }
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @author = author.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def author_params
      params.require(:author).permit(:email, :encrypted_password, :name)
    end
end

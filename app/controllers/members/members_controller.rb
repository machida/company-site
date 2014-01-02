class Members::RegistrationsController < Devise::RegistrationsController
  prepend_before_filter :require_no_authentication, :only => [ :cancel]
  prepend_before_filter :authenticate_scope!, :only => [:new, :create ,:edit, :update, :destroy]

  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
  end

  def new
    @member = Member.new
  end

  def edit
    @member = Member.find(params[:id])
  end

  def create
    @member = Member.new(admin_params)

    respond_to do |format|
      if @member.save
        format.html { redirect_to admin_articles_path, notice: 'admin was successfully created.' }
        format.json { render action: 'show', status: :created, location: @member }
      else
        format.html { render action: 'new' }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @member = Member.find(params[:id])
    respond_to do |format|
      if @article.update(admin_params)
        format.html { redirect_to admin_articles_path, notice: 'admin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @member.errors, status: :unprocessable_admin }
      end
    end
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    respond_to do |format|
      format.html { redirect_to admin_admins_path }
      format.json { head :no_content }
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      @member = member.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      params.require(:member).permit(:email, :encrypted_password, :name)
    end
end

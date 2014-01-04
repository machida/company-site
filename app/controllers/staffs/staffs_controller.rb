class Staffs::StaffsController < StaffsController

  def index
    @staffs = Staff.all
  end

  def show
    @staff = Staff.friendly.find(params[:id])
  end

  def new
    @staff = Staff.new
  end

  def edit
    @staff = Staff.find(params[:id])
  end

  def create
    @staff = Staff.new(staff_params)

    respond_to do |format|
      if @staff.save
        format.html { redirect_to staffs_staffs_path, notice: 'article was successfully created.' }
        format.json { render action: 'show', status: :created, location: @staff }
      else
        format.html { render action: 'new' }
        format.json { render json: @staff.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @staff = Staff.find(params[:id])
    respond_to do |format|
      if @staff.update(article_params)
        format.html { redirect_to staffs_staffs_path, notice: 'article was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @staff.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @staff = Staff.find(params[:id])
    @staff.destroy
    respond_to do |format|
      format.html { redirect_to staffs_staffs_path }
      format.json { head :no_content }
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @staff = Staff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:staff).permit(:title, :body, :tag_list, :slug, :category_id)
    end
end

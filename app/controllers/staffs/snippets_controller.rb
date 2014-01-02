class Staffs::SnippetsController < StaffsController
  def index
    @snippets = Snippet.all
  end

  def show
    @snippet = Snippet.find(params[:id])
  end

  def new
    @snippet = Snippet.new
  end

  def edit
    @snippet = Snippet.find(params[:id])
  end

  def create
    @snippet = Snippet.new(snippet_params)

    respond_to do |format|
      if @snippet.save
        format.html { redirect_to staffs_snippets_path, notice: 'snippet was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    @snippet = Snippet.find(params[:id])
    respond_to do |format|
      if @snippet.update(snippet_params)
        format.html { redirect_to staffs_snippets_path, notice: 'article was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @snippet = Snippet.find(params[:id])
    @snippet.destroy
    respond_to do |format|
      format.html { redirect_to staffs_snippets_path }
      format.json { head :no_content }
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snippet
      @snippet = Snippet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def snippet_params
      params.require(:snippet).permit(:title, :body, :slug)
    end
end
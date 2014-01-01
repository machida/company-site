class SnippetsController < ApplicationController
  before_action :set_snippet, only: [:show, :edit, :update, :destroy]

  # GET /snippets
  # GET /snippets.json
  def index
    @snippets = Snippet.all
  end

  # GET /snippets/1
  # GET /snippets/1.json
  def show
  end

  # GET /snippets/new
  def new
    @snippet = Snippet.new
  end

  # GET /snippets/1/edit
  def edit
  end

  # POST /snippets
  # POST /snippets.json
  def create
    @snippet = Snippet.new(snippet_params)

    respond_to do |format|
      if @snippet.save
        format.html { redirect_to @snippet, notice: 'Snippet was successfully created.' }
        format.json { render action: 'show', status: :created, location: @snippet }
      else
        format.html { render action: 'new' }
        format.json { render json: @snippet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /snippets/1
  # PATCH/PUT /snippets/1.json
  def update
    respond_to do |format|
      if @snippet.update(snippet_params)
        format.html { redirect_to @snippet, notice: 'Snippet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @snippet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /snippets/1
  # DELETE /snippets/1.json
  def destroy
    @snippet.destroy
    respond_to do |format|
      format.html { redirect_to snippets_url }
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
      params[:snippet]
    end
end

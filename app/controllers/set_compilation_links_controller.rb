class SetCompilationLinksController < ApplicationController
  before_action :set_set_compilation_link, only: [:show, :edit, :update, :destroy]

  # GET /set_compilation_links
  # GET /set_compilation_links.json
  def index
    @set_compilation_links = SetCompilationLink.all
  end

  # GET /set_compilation_links/1
  # GET /set_compilation_links/1.json
  def show
  end

  # GET /set_compilation_links/new
  def new
    @set_compilation_link = SetCompilationLink.new
  end

  # GET /set_compilation_links/1/edit
  def edit
  end

  # POST /set_compilation_links
  # POST /set_compilation_links.json
  def create
    @set_compilation_link = SetCompilationLink.new(set_compilation_link_params)

    respond_to do |format|
      if @set_compilation_link.save
        format.html { redirect_to @set_compilation_link, notice: 'Set compilation link was successfully created.' }
        format.json { render action: 'show', status: :created, location: @set_compilation_link }
      else
        format.html { render action: 'new' }
        format.json { render json: @set_compilation_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /set_compilation_links/1
  # PATCH/PUT /set_compilation_links/1.json
  def update
    respond_to do |format|
      if @set_compilation_link.update(set_compilation_link_params)
        format.html { redirect_to @set_compilation_link, notice: 'Set compilation link was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @set_compilation_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /set_compilation_links/1
  # DELETE /set_compilation_links/1.json
  def destroy
    @set_compilation_link.destroy
    respond_to do |format|
      format.html { redirect_to set_compilation_links_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_set_compilation_link
      @set_compilation_link = SetCompilationLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def set_compilation_link_params
      params.require(:set_compilation_link).permit(:set_id, :setcompilation_id)
    end
end

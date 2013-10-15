class SetcompilationsController < ApplicationController
  before_action :set_setcompilation, only: [:show, :edit, :update, :destroy]

  # GET /setcompilations
  # GET /setcompilations.json
  def index
    @setcompilations = Setcompilation.all
  end

  # GET /setcompilations/1
  # GET /setcompilations/1.json
  def show
  end

  # GET /setcompilations/new
  def new
    @setcompilation = Setcompilation.new
  end

  # GET /setcompilations/1/edit
  def edit
  end

  # POST /setcompilations
  # POST /setcompilations.json
  def create
    @setcompilation = Setcompilation.new(setcompilation_params)

    respond_to do |format|
      if @setcompilation.save
        format.html { redirect_to @setcompilation, notice: 'Setcompilation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @setcompilation }
      else
        format.html { render action: 'new' }
        format.json { render json: @setcompilation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /setcompilations/1
  # PATCH/PUT /setcompilations/1.json
  def update
    respond_to do |format|
      if @setcompilation.update(setcompilation_params)
        format.html { redirect_to @setcompilation, notice: 'Setcompilation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @setcompilation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /setcompilations/1
  # DELETE /setcompilations/1.json
  def destroy
    @setcompilation.destroy
    respond_to do |format|
      format.html { redirect_to setcompilations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_setcompilation
      @setcompilation = Setcompilation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def setcompilation_params
      params.require(:setcompilation).permit(:name, :theme)
    end
end

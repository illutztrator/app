class SetquestionlinksController < ApplicationController
  before_action :set_setquestionlink, only: [:show, :edit, :update, :destroy]

  # GET /setquestionlinks
  # GET /setquestionlinks.json
  def index
    @setquestionlinks = Setquestionlink.all
  end

  # GET /setquestionlinks/1
  # GET /setquestionlinks/1.json
  def show
  end

  # GET /setquestionlinks/new
  def new
    @setquestionlink = Setquestionlink.new
  end

  # GET /setquestionlinks/1/edit
  def edit
  end

  # POST /setquestionlinks
  # POST /setquestionlinks.json
  def create
    @setquestionlink = Setquestionlink.new(setquestionlink_params)

    respond_to do |format|
      if @setquestionlink.save
        format.html { redirect_to @setquestionlink, notice: 'Setquestionlink was successfully created.' }
        format.json { render action: 'show', status: :created, location: @setquestionlink }
      else
        format.html { render action: 'new' }
        format.json { render json: @setquestionlink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /setquestionlinks/1
  # PATCH/PUT /setquestionlinks/1.json
  def update
    respond_to do |format|
      if @setquestionlink.update(setquestionlink_params)
        format.html { redirect_to @setquestionlink, notice: 'Setquestionlink was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @setquestionlink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /setquestionlinks/1
  # DELETE /setquestionlinks/1.json
  def destroy
    @setquestionlink.destroy
    respond_to do |format|
      format.html { redirect_to setquestionlinks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_setquestionlink
      @setquestionlink = Setquestionlink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def setquestionlink_params
      params.require(:setquestionlink).permit(:set_id, :question_id, :follower_id)
    end
end

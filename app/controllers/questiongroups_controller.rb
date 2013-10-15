class QuestiongroupsController < ApplicationController
  before_action :set_questiongroup, only: [:show, :edit, :update, :destroy]

  # GET /questiongroups
  # GET /questiongroups.json
  def index
    @questiongroups = Questiongroup.all
  end

  # GET /questiongroups/1
  # GET /questiongroups/1.json
  def show
  end

  # GET /questiongroups/new
  def new
    @questiongroup = Questiongroup.new
  end

  # GET /questiongroups/1/edit
  def edit
  end

  # POST /questiongroups
  # POST /questiongroups.json
  def create
    @questiongroup = Questiongroup.new(questiongroup_params)

    respond_to do |format|
      if @questiongroup.save
        format.html { redirect_to @questiongroup, notice: 'Questiongroup was successfully created.' }
        format.json { render action: 'show', status: :created, location: @questiongroup }
      else
        format.html { render action: 'new' }
        format.json { render json: @questiongroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questiongroups/1
  # PATCH/PUT /questiongroups/1.json
  def update
    respond_to do |format|
      if @questiongroup.update(questiongroup_params)
        format.html { redirect_to @questiongroup, notice: 'Questiongroup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @questiongroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questiongroups/1
  # DELETE /questiongroups/1.json
  def destroy
    @questiongroup.destroy
    respond_to do |format|
      format.html { redirect_to questiongroups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questiongroup
      @questiongroup = Questiongroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def questiongroup_params
      params.require(:questiongroup).permit(:name)
    end
end

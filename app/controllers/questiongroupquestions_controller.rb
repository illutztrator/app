class QuestiongroupquestionsController < ApplicationController
  before_action :set_questiongroupquestion, only: [:show, :edit, :update, :destroy]

  # GET /questiongroupquestions
  # GET /questiongroupquestions.json
  def index
    @questiongroupquestions = Questiongroupquestion.all
  end

  # GET /questiongroupquestions/1
  # GET /questiongroupquestions/1.json
  def show
  end

  # GET /questiongroupquestions/new
  def new
    @questiongroupquestion = Questiongroupquestion.new
  end

  # GET /questiongroupquestions/1/edit
  def edit
  end

  # POST /questiongroupquestions
  # POST /questiongroupquestions.json
  def create
    @questiongroupquestion = Questiongroupquestion.new(questiongroupquestion_params)

    respond_to do |format|
      if @questiongroupquestion.save
        format.html { redirect_to @questiongroupquestion, notice: 'Questiongroupquestion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @questiongroupquestion }
      else
        format.html { render action: 'new' }
        format.json { render json: @questiongroupquestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questiongroupquestions/1
  # PATCH/PUT /questiongroupquestions/1.json
  def update
    respond_to do |format|
      if @questiongroupquestion.update(questiongroupquestion_params)
        format.html { redirect_to @questiongroupquestion, notice: 'Questiongroupquestion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @questiongroupquestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questiongroupquestions/1
  # DELETE /questiongroupquestions/1.json
  def destroy
    @questiongroupquestion.destroy
    respond_to do |format|
      format.html { redirect_to questiongroupquestions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questiongroupquestion
      @questiongroupquestion = Questiongroupquestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def questiongroupquestion_params
      params.require(:questiongroupquestion).permit(:questiongroup_id, :question_id, :position)
    end
end

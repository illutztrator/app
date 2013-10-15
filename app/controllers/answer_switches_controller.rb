class AnswerSwitchesController < ApplicationController
  before_action :set_answer_switch, only: [:show, :edit, :update, :destroy]

  # GET /answer_switches
  # GET /answer_switches.json
  def index
    @answer_switches = AnswerSwitch.all
  end

  # GET /answer_switches/1
  # GET /answer_switches/1.json
  def show
  end

  # GET /answer_switches/new
  def new
    @answer_switch = AnswerSwitch.new
  end

  # GET /answer_switches/1/edit
  def edit
  end

  # POST /answer_switches
  # POST /answer_switches.json
  def create
    @answer_switch = AnswerSwitch.new(answer_switch_params)

    respond_to do |format|
      if @answer_switch.save
        format.html { redirect_to @answer_switch, notice: 'Answer switch was successfully created.' }
        format.json { render action: 'show', status: :created, location: @answer_switch }
      else
        format.html { render action: 'new' }
        format.json { render json: @answer_switch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answer_switches/1
  # PATCH/PUT /answer_switches/1.json
  def update
    respond_to do |format|
      if @answer_switch.update(answer_switch_params)
        format.html { redirect_to @answer_switch, notice: 'Answer switch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @answer_switch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answer_switches/1
  # DELETE /answer_switches/1.json
  def destroy
    @answer_switch.destroy
    respond_to do |format|
      format.html { redirect_to answer_switches_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer_switch
      @answer_switch = AnswerSwitch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_switch_params
      params.require(:answer_switch).permit(:question_id, :answer, :nextQuestion)
    end
end

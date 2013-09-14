class SessionAnswersController < ApplicationController
  before_action :set_session_answer, only: [:show, :edit, :update, :destroy]

  # GET /session_answers
  # GET /session_answers.json
  def index
    @session_answers = SessionAnswer.all
  end

  # GET /session_answers/1
  # GET /session_answers/1.json
  def show
  end

  # GET /session_answers/new
  def new
    @session_answer = SessionAnswer.new
  end

  # GET /session_answers/1/edit
  def edit
  end

  # POST /session_answers
  # POST /session_answers.json
  def create
    @session_answer = SessionAnswer.new(session_answer_params)

    respond_to do |format|
      if @session_answer.save
        format.html { redirect_to @session_answer, notice: 'Session answer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @session_answer }
      else
        format.html { render action: 'new' }
        format.json { render json: @session_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /session_answers/1
  # PATCH/PUT /session_answers/1.json
  def update
    respond_to do |format|
      if @session_answer.update(session_answer_params)
        format.html { redirect_to @session_answer, notice: 'Session answer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @session_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /session_answers/1
  # DELETE /session_answers/1.json
  def destroy
    @session_answer.destroy
    respond_to do |format|
      format.html { redirect_to session_answers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session_answer
      @session_answer = SessionAnswer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def session_answer_params
      params.require(:session_answer).permit(:session_id, :answer_id)
    end
end

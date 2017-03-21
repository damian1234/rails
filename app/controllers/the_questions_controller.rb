class TheQuestionsController < ApplicationController
  before_action :set_the_question, only: [:show, :edit, :update, :destroy]

  # GET /the_questions
  # GET /the_questions.json
  def index
    @the_questions = TheQuestion.all
  end

  # GET /the_questions/1
  # GET /the_questions/1.json
  def show
  end

  # GET /the_questions/new
  def new
    @quiz = Quiz.find(params['quiz_id'])
    @the_question = TheQuestion.new
  end

  # GET /the_questions/1/edit
  def edit
  end

  # POST /the_questions
  # POST /the_questions.json
  def create
    @quiz = Quiz.find(params['quiz_id'])
    @the_question = TheQuestion.new(the_question_params)
    @the_question.quiz_id = @quiz.id
    respond_to do |format|
      if @the_question.save
        format.html { redirect_to @quiz, notice: 'The question was successfully created.' }
        format.json { render :show, status: :created, location: @the_question }
      else
        format.html { render :new }
        format.json { render json: @the_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /the_questions/1
  # PATCH/PUT /the_questions/1.json
  def update
    respond_to do |format|
      if @the_question.update(the_question_params)
        format.html { redirect_to @the_question, notice: 'The question was successfully updated.' }
        format.json { render :show, status: :ok, location: @the_question }
      else
        format.html { render :edit }
        format.json { render json: @the_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /the_questions/1
  # DELETE /the_questions/1.json
  def destroy
    @the_question.destroy
    respond_to do |format|
      format.html { redirect_to the_questions_url, notice: 'The question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_the_question
      @the_question = TheQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def the_question_params
      params.require(:the_question).permit(:quiz_id, :question, :weight, :answer1, :field1, :answer2, :field2, :answer3, :field3, :answer4, :field4)
    end
end

class TakeQuizzesController < ApplicationController
    before_action :set_take_quiz, only: [:show, :edit, :update, :destroy]

    def index
        @quizzes = Quiz.all
    end
    
    def take
        @take_quiz = TakeQuiz.new
        @quiz = Quiz.find(params['take_quiz_id'])
    end
    
    def create
        @take_quiz = TakeQuiz.new(take_quiz_params)
        respond_to do |format|
            if @take_quiz.save
                format.html { redirect_to @take_quiz, notice: 'next question' }
                format.json { render :show, status: :created, location: @take_quiz }
            else
                format.html { render :new }
                format.json { render json: @take_quiz.errors, status: :unprocessable_entity }
            end
        
        end
    end
    
    def set_quiz
      @quiz = Quiz.find(params[:id])
    end
    
    def set_take_quiz
      @take_quiz = TakeQuiz.find(params[:id])
    end
    
    def take_quiz_params
      params.permit(:answer)
    end
end
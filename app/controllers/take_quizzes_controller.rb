class TakeQuizzesController < ApplicationController
    before_action :set_take_quiz, only: [:show, :edit, :update, :destroy]

    def index
        @quizzes = Quiz.all
    end
    def take
        @take_quiz = Quiz.find(params['take_quiz_id'])
    end
end
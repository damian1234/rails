class Quiz < ActiveRecord::Base
    has_many :the_questions
    belongs_to :take_quizzes
    
end
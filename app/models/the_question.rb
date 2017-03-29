class TheQuestion < ActiveRecord::Base
    belongs_to :quizzes
    accepts_nested_attributes_for :quizzes
end
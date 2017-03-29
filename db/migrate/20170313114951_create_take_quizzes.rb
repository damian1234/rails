class CreateTakeQuizzes < ActiveRecord::Migration
  def change
    create_table :take_quizzes do |t|
      t.string :answer
      t.integer :number_of_questions
      t.timestamps null: false
    end
  end
end

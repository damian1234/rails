class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :name
      t.integer :number_of_questions
      t.integer :questions_made
      t.timestamps null: false
    end
  end
end

class CreateTakeQuizzes < ActiveRecord::Migration
  def change
    create_table :take_quizzes do |t|
      t.string :answer
      t.timestamps null: false
    end
  end
end

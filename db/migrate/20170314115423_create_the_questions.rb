class CreateTheQuestions < ActiveRecord::Migration
  def change
    create_table :the_questions do |t|
      t.integer :quiz_id
      t.string :question
      t.integer :weight
      t.string :answer1
      t.string :field1
      t.string :answer2
      t.string :field2
      t.string :answer3
      t.string :field3
      t.string :answer4
      t.string :field4
      t.timestamps null: false
    end
  end
end

json.extract! quiz, :id, :name, :number_of_questions, :created_at, :updated_at
json.url quiz_url(quiz, format: :json)
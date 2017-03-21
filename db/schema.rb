# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170314115532) do

  create_table "courses", force: :cascade do |t|
    t.string   "field"
    t.string   "name"
    t.integer  "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quizzes", force: :cascade do |t|
    t.string   "name"
    t.integer  "number_of_questions"
    t.integer  "questions_made"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "the_questions", force: :cascade do |t|
    t.integer  "quiz_id"
    t.string   "question"
    t.integer  "weight"
    t.string   "answer1"
    t.string   "field1"
    t.boolean  "select1"
    t.string   "answer2"
    t.string   "field2"
    t.boolean  "select2"
    t.string   "answer3"
    t.string   "field3"
    t.boolean  "select3"
    t.string   "answer4"
    t.string   "field4"
    t.boolean  "select4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

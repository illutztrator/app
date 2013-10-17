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

ActiveRecord::Schema.define(version: 20131017115456) do

  create_table "answer_switches", force: true do |t|
    t.integer  "setItemId"
    t.string   "answer"
    t.integer  "next_setitemid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "answers", force: true do |t|
    t.string   "text"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "setItemId"
  end

  create_table "helptexts", force: true do |t|
    t.integer  "question_id"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "problems", force: true do |t|
    t.integer  "question_id"
    t.text     "problem"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questiongroupquestions", force: true do |t|
    t.integer  "questiongroup_id"
    t.integer  "question_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questiongroups", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questionproblems", force: true do |t|
    t.integer  "question_id"
    t.integer  "problemcount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "needs_insertion"
    t.integer  "answer_of_setItem"
    t.string   "question_type"
    t.boolean  "check_against"
    t.text     "explanation"
  end

  create_table "questionsets", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "session_answers", force: true do |t|
    t.integer  "session_id"
    t.integer  "answer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", force: true do |t|
    t.integer  "sessionid"
    t.integer  "user_id"
    t.datetime "date"
    t.boolean  "completed"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "topic"
    t.integer  "ancestor_id"
  end

  create_table "set_compilation_links", force: true do |t|
    t.integer  "set_id"
    t.integer  "setcompilation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "followed_by"
  end

  create_table "setcompilations", force: true do |t|
    t.string   "name"
    t.string   "theme"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "setitems", force: true do |t|
    t.integer  "set_id"
    t.integer  "item_id"
    t.integer  "follower_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "itemtype"
  end

  create_table "texts", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "needs_insertion"
    t.integer  "answer_of_setItem"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

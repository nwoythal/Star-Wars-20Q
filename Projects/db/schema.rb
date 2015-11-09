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

ActiveRecord::Schema.define(version: 20151109192920) do

  create_table "alives", force: :cascade do |t|
    t.string   "what_am_i"
    t.text     "answer_or_question"
    t.integer  "node_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "animals", force: :cascade do |t|
    t.string   "what_am_i"
    t.text     "answer_or_question"
    t.integer  "node_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "builts", force: :cascade do |t|
    t.string   "what_am_i"
    t.text     "answer_or_question"
    t.integer  "node_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clones", force: :cascade do |t|
    t.string   "what_am_i"
    t.text     "answer_or_question"
    t.integer  "node_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cyborgs", force: :cascade do |t|
    t.string   "what_am_i"
    t.text     "answer_or_question"
    t.integer  "node_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empires", force: :cascade do |t|
    t.string   "what_am_i"
    t.text     "answer_or_question"
    t.integer  "node_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jedis", force: :cascade do |t|
    t.string   "what_am_i"
    t.text     "answer_or_question"
    t.integer  "node_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machines", force: :cascade do |t|
    t.string   "what_am_i"
    t.text     "answer_or_question"
    t.integer  "node_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moons", force: :cascade do |t|
    t.string   "what_am_i"
    t.text     "answer_or_question"
    t.integer  "node_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "places", force: :cascade do |t|
    t.string   "what_am_i"
    t.text     "answer_or_question"
    t.integer  "node_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: :cascade do |t|
    t.string   "what_am_i"
    t.text     "answer_or_question"
    t.integer  "node_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rebels", force: :cascade do |t|
    t.string   "what_am_i"
    t.text     "answer_or_question"
    t.integer  "node_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "senators", force: :cascade do |t|
    t.string   "what_am_i"
    t.text     "answer_or_question"
    t.integer  "node_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sentients", force: :cascade do |t|
    t.string   "what_am_i"
    t.text     "answer_or_question"
    t.integer  "node_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "siths", force: :cascade do |t|
    t.string   "what_am_i"
    t.text     "answer_or_question"
    t.integer  "node_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "starobjects", force: :cascade do |t|
    t.string   "what_am_i"
    t.text     "answer_or_question"
    t.integer  "node_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "starthings", force: :cascade do |t|
    t.string   "what_am_i"
    t.text     "answer_or_question"
    t.integer  "node_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "universes", force: :cascade do |t|
    t.string   "what_am_i"
    t.text     "answer_or_question"
    t.integer  "node_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weapons", force: :cascade do |t|
    t.string   "what_am_i"
    t.text     "answer_or_question"
    t.integer  "node_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

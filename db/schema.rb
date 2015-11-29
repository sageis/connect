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

ActiveRecord::Schema.define(version: 20151129075811) do

  create_table "professions", force: :cascade do |t|
    t.text     "description"
    t.string   "title"
    t.string   "file_name"
    t.integer  "quiz_id"
    t.string   "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "professions_programs", id: false, force: :cascade do |t|
    t.integer "profession_id"
    t.integer "program_id"
  end

  add_index "professions_programs", ["profession_id"], name: "index_professions_programs_on_profession_id"
  add_index "professions_programs", ["program_id"], name: "index_professions_programs_on_program_id"

  create_table "professions_users", id: false, force: :cascade do |t|
    t.integer "profession_id"
    t.integer "user_id"
  end

  add_index "professions_users", ["profession_id"], name: "index_professions_users_on_profession_id"
  add_index "professions_users", ["user_id"], name: "index_professions_users_on_user_id"

  create_table "programs", force: :cascade do |t|
    t.string   "creator_id"
    t.datetime "date_time"
    t.datetime "due_date"
    t.string   "description"
    t.string   "photo_file_name"
    t.boolean  "applied"
    t.integer  "price"
    t.boolean  "paid"
    t.integer  "zipcode"
    t.string   "region"
    t.string   "title"
    t.string   "location_type"
    t.string   "website_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "programs_users", id: false, force: :cascade do |t|
    t.integer "program_id"
    t.integer "user_id"
  end

  add_index "programs_users", ["program_id"], name: "index_programs_users_on_program_id"
  add_index "programs_users", ["user_id"], name: "index_programs_users_on_user_id"

  create_table "quizzes", force: :cascade do |t|
    t.float    "writing"
    t.float    "speaking"
    t.float    "persuading"
    t.float    "taking_initiative"
    t.float    "analyzing"
    t.float    "creating"
    t.float    "problem_solving"
    t.float    "helping"
    t.float    "physical_activities"
    t.float    "organizing"
    t.float    "team_work"
    t.float    "investigating"
    t.float    "build"
    t.float    "growth"
    t.float    "money"
    t.float    "security"
    t.integer  "user_id"
    t.integer  "profession_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "program_id"
    t.string   "user_id"
    t.datetime "date_time"
    t.text     "review"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", force: :cascade do |t|
    t.string   "session_id", null: false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], name: "index_sessions_on_session_id", unique: true
  add_index "sessions", ["updated_at"], name: "index_sessions_on_updated_at"

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "login"
    t.integer  "quiz_id"
    t.string   "photo_filename"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end

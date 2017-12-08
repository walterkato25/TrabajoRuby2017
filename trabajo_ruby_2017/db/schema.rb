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

ActiveRecord::Schema.define(version: 20171208155055) do

  create_table "activities", force: :cascade do |t|
    t.string   "description"
    t.date     "date"
    t.integer  "minimum"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "course_id"
    t.index ["course_id"], name: "index_activities_on_course_id"
  end

  create_table "courses", force: :cascade do |t|
    t.integer  "year",        limit: 4
    t.integer  "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "notes", force: :cascade do |t|
    t.integer  "nota"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "activity_id"
    t.integer  "student_id"
    t.index ["activity_id"], name: "index_notes_on_activity_id"
    t.index ["student_id"], name: "index_notes_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string   "legajo",     limit: 7
    t.integer  "dni",        limit: 8
    t.string   "lastname",   limit: 50
    t.string   "name",       limit: 50
    t.string   "email"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "course_id"
    t.index ["course_id"], name: "index_students_on_course_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_and_courses", force: :cascade do |t|
    t.integer "user_id"
    t.integer "course_id"
    t.index ["course_id"], name: "index_users_and_courses_on_course_id"
    t.index ["user_id"], name: "index_users_and_courses_on_user_id"
  end

end

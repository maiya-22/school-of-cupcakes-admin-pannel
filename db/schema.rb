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

ActiveRecord::Schema.define(version: 2018_05_15_042626) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accesses", force: :cascade do |t|
    t.string "user_name"
    t.string "password"
    t.string "role"
    t.bigint "teacher_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "hint"
    t.index ["student_id"], name: "index_accesses_on_student_id"
    t.index ["teacher_id"], name: "index_accesses_on_teacher_id"
  end

  create_table "cohorts", force: :cascade do |t|
    t.string "name"
    t.date "start"
    t.datetime "end"
    t.bigint "teacher_id"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_cohorts_on_course_id"
    t.index ["teacher_id"], name: "index_cohorts_on_teacher_id"
  end

  create_table "cohorts_students", force: :cascade do |t|
    t.integer "cohort_id"
    t.integer "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "pic"
    t.integer "hours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "education"
    t.string "pic"
    t.string "profile"
    t.string "person_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "pic"
    t.string "profile"
    t.integer "age"
    t.string "education"
    t.integer "salary"
    t.string "person_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

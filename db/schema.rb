# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_07_05_095959) do
  create_table "attempts", force: :cascade do |t|
    t.datetime "day"
    t.integer "student_id", null: false
    t.integer "exercise_id", null: false
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exercise_id"], name: "index_attempts_on_exercise_id"
    t.index ["student_id"], name: "index_attempts_on_student_id"
  end

  create_table "boards", force: :cascade do |t|
    t.string "name"
    t.string "logo"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ancestry"
    t.index ["ancestry"], name: "index_boards_on_ancestry"
  end

  create_table "chapters", force: :cascade do |t|
    t.string "title"
    t.integer "subject_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_chapters_on_subject_id"
  end

  create_table "contents", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "type"
    t.string "link"
    t.integer "chapter_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chapter_id"], name: "index_contents_on_chapter_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.string "title"
    t.integer "duration"
    t.integer "number_of_questions"
    t.integer "highest_score"
    t.integer "chapter_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chapter_id"], name: "index_exercises_on_chapter_id"
  end

  create_table "grades", force: :cascade do |t|
    t.string "name"
    t.integer "board_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ancestry"
    t.index ["ancestry"], name: "index_grades_on_ancestry"
    t.index ["board_id"], name: "index_grades_on_board_id"
  end

  create_table "notes", force: :cascade do |t|
    t.string "notes_taken"
    t.integer "student_id", null: false
    t.integer "content_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["content_id"], name: "index_notes_on_content_id"
    t.index ["student_id"], name: "index_notes_on_student_id"
  end

  create_table "progresses", force: :cascade do |t|
    t.string "status"
    t.integer "student_id", null: false
    t.integer "content_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["content_id"], name: "index_progresses_on_content_id"
    t.index ["student_id"], name: "index_progresses_on_student_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "description"
    t.string "correct_option"
    t.string "option_a"
    t.string "option_b"
    t.string "option_c"
    t.string "option_d"
    t.string "solution"
    t.integer "exercise_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exercise_id"], name: "index_questions_on_exercise_id"
  end

  create_table "responses", force: :cascade do |t|
    t.string "answered"
    t.string "answer"
    t.string "marked_for_review"
    t.integer "time_taken"
    t.integer "attempt_id", null: false
    t.integer "question_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attempt_id"], name: "index_responses_on_attempt_id"
    t.index ["question_id"], name: "index_responses_on_question_id"
  end

  create_table "student_responses", force: :cascade do |t|
    t.string "answer"
    t.string "answered"
    t.string "marked_for_review"
    t.integer "time_taken"
    t.integer "attempt_id", null: false
    t.integer "question_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attempt_id"], name: "index_student_responses_on_attempt_id"
    t.index ["question_id"], name: "index_student_responses_on_question_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "mobile"
    t.date "dob"
    t.string "profile_pic"
    t.integer "login_progress"
    t.integer "grade_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grade_id"], name: "index_students_on_grade_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.string "colour"
    t.string "logo"
    t.integer "grade_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ancestry"
    t.index ["ancestry"], name: "index_subjects_on_ancestry"
    t.index ["grade_id"], name: "index_subjects_on_grade_id"
  end

  create_table "votes", force: :cascade do |t|
    t.string "vote_type"
    t.integer "student_id", null: false
    t.integer "content_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["content_id"], name: "index_votes_on_content_id"
    t.index ["student_id"], name: "index_votes_on_student_id"
  end

  add_foreign_key "attempts", "exercises"
  add_foreign_key "attempts", "students"
  add_foreign_key "chapters", "subjects"
  add_foreign_key "contents", "chapters"
  add_foreign_key "exercises", "chapters"
  add_foreign_key "grades", "boards"
  add_foreign_key "notes", "contents"
  add_foreign_key "notes", "students"
  add_foreign_key "progresses", "contents"
  add_foreign_key "progresses", "students"
  add_foreign_key "questions", "exercises"
  add_foreign_key "responses", "attempts"
  add_foreign_key "responses", "questions"
  add_foreign_key "student_responses", "attempts"
  add_foreign_key "student_responses", "questions"
  add_foreign_key "students", "grades"
  add_foreign_key "subjects", "grades"
  add_foreign_key "votes", "contents"
  add_foreign_key "votes", "students"
end

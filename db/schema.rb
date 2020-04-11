# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_11_142523) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "applies", force: :cascade do |t|
    t.bigint "recruit_id"
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "major"
    t.string "student_id"
    t.string "grade"
    t.text "ask1_a"
    t.text "ask2_a"
    t.text "ask3_a"
    t.text "ask4_a"
    t.text "ask5_a"
    t.string "ask1_file"
    t.string "ask2_file"
    t.string "ask3_file"
    t.string "ask4_file"
    t.string "ask5_file"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "ask6_a"
    t.string "ask7_a"
    t.string "ask8_a"
    t.integer "additional1_a"
    t.integer "additional2_a"
    t.integer "additional3_a"
    t.string "ask9_a"
    t.string "ask10_a"
    t.string "ask6_file"
    t.string "ask7_file"
    t.string "ask8_file"
    t.string "ask9_file"
    t.string "ask10_file"
    t.index ["recruit_id"], name: "index_applies_on_recruit_id"
  end

  create_table "assignments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "title"
    t.text "content"
    t.string "image"
    t.datetime "start_at"
    t.datetime "end_at"
    t.string "file"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_assignments_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "commentable_type"
    t.bigint "commentable_id"
    t.bigint "user_id"
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["commentable_type", "commentable_id"], name: "index_comments_on_commentable_type_and_commentable_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "galleries", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "title"
    t.text "content"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_galleries_on_user_id"
  end

  create_table "lectures", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "title"
    t.text "content"
    t.string "image"
    t.integer "view_count"
    t.integer "lecture_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "file"
    t.index ["user_id"], name: "index_lectures_on_user_id"
  end

  create_table "recruits", force: :cascade do |t|
    t.integer "member_num"
    t.datetime "start_at"
    t.datetime "end_at"
    t.string "ask1_q"
    t.string "ask2_q"
    t.string "ask3_q"
    t.string "ask4_q"
    t.string "ask5_q"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "ask6_q"
    t.string "ask7_q"
    t.string "ask8_q"
    t.string "additional1_q"
    t.string "additional2_q"
    t.string "additional3_q"
    t.string "ask9_q"
    t.string "ask10_q"
    t.integer "ask1_type"
    t.integer "ask2_type"
    t.integer "ask3_type"
    t.integer "ask4_type"
    t.integer "ask5_type"
    t.integer "ask6_type"
    t.integer "ask7_type"
    t.integer "ask8_type"
    t.integer "ask9_type"
    t.integer "ask10_type"
    t.text "ask1_choices"
    t.text "ask2_choices"
    t.text "ask3_choices"
    t.text "ask4_choices"
    t.text "ask5_choices"
    t.text "ask6_choices"
    t.text "ask7_choices"
    t.text "ask8_choices"
    t.text "ask9_choices"
    t.text "ask10_choices"
  end

  create_table "submissions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "assignment_id", null: false
    t.string "title"
    t.text "description"
    t.string "url"
    t.string "image"
    t.string "file"
    t.integer "view_count", default: 0
    t.integer "grade", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["assignment_id"], name: "index_submissions_on_assignment_id"
    t.index ["user_id"], name: "index_submissions_on_user_id"
  end

  create_table "taggings", id: :serial, force: :cascade do |t|
    t.integer "tag_id"
    t.string "taggable_type"
    t.integer "taggable_id"
    t.string "tagger_type"
    t.integer "tagger_id"
    t.string "context", limit: 128
    t.datetime "created_at"
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "taggings_taggable_context_idx"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
  end

  create_table "tags", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "thumbnail"
    t.string "name"
    t.string "phone"
    t.integer "gender"
    t.integer "student_id"
    t.string "member_num"
    t.integer "role", default: 0
    t.string "info"
    t.date "birth"
    t.string "vms_id"
    t.integer "join_year"
    t.string "id_of_1365"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "mentor_type"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wishes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "submission_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["submission_id"], name: "index_wishes_on_submission_id"
    t.index ["user_id", "submission_id"], name: "index_wishes_on_user_id_and_submission_id", unique: true
    t.index ["user_id"], name: "index_wishes_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "applies", "recruits"
  add_foreign_key "assignments", "users"
  add_foreign_key "comments", "users"
  add_foreign_key "galleries", "users"
  add_foreign_key "lectures", "users"
  add_foreign_key "submissions", "assignments"
  add_foreign_key "submissions", "users"
  add_foreign_key "taggings", "tags"
  add_foreign_key "wishes", "submissions"
  add_foreign_key "wishes", "users"
end

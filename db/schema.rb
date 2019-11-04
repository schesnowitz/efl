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

ActiveRecord::Schema.define(version: 2019_11_03_083115) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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

  create_table "pages", force: :cascade do |t|
    t.string "name"
    t.string "count_text1"
    t.string "count_text2"
    t.string "count_text3"
    t.string "count_text4"
    t.string "count_text5"
    t.string "count_text6"
    t.string "count_num1"
    t.string "count_num2"
    t.string "count_num3"
    t.string "performance_text1"
    t.string "performance_text2"
    t.string "performance_text3"
    t.string "performance_text4"
    t.string "performance_text5"
    t.string "performance_text6"
    t.string "performance_text7"
    t.string "performance_text8"
    t.string "performance_text9"
    t.string "performance_text10"
    t.string "performance_text11"
    t.string "performance_text12"
    t.string "performance_text13"
    t.string "performance_text14"
    t.string "performance_text15"
    t.integer "performance_num1"
    t.integer "performance_num2"
    t.integer "performance_num3"
    t.integer "performance_num4"
    t.string "top_text1"
    t.string "top_text2"
    t.string "top_text3"
    t.string "top_text4"
    t.string "foot_text1"
    t.string "foot_text2"
    t.string "foot_text3"
    t.string "foot_text4"
    t.string "foot_text5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end

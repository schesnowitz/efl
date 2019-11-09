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

ActiveRecord::Schema.define(version: 2019_11_09_060152) do

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

  create_table "driver_applications", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "dob"
    t.string "social"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "postal"
    t.string "phone"
    t.string "email"
    t.date "year"
    t.string "make"
    t.string "model"
    t.string "color"
    t.string "vin"
    t.string "mileage"
    t.string "license_number"
    t.text "notes"
    t.integer "years_experience"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incoming_contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string "mailer_send_to_email1"
    t.string "mailer_send_to_email2"
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
    t.string "contact_text1"
    t.string "contact_text2"
    t.string "contact_text3"
    t.string "contact_text4"
    t.string "contact_text5"
    t.string "contact_text6"
    t.string "contact_text7"
    t.string "contact_text8"
    t.string "contact_text9"
    t.string "contact_text10"
    t.string "contact_text11"
    t.string "contact_text12"
    t.string "contact_text13"
    t.string "contact_text14"
    t.string "contact_text15"
    t.string "about_text1"
    t.string "about_text2"
    t.string "about_text3"
    t.string "about_text4"
    t.string "about_text5"
    t.string "about_text6"
    t.string "about_text7"
    t.string "about_text8"
    t.string "about_text9"
    t.string "about_text10"
    t.string "about_text11"
    t.string "about_text12"
    t.string "about_text13"
    t.string "about_text14"
    t.string "about_text15"
    t.string "services_text1"
    t.string "services_text2"
    t.string "services_text3"
    t.string "services_text4"
    t.string "services_text5"
    t.string "services_text6"
    t.string "services_text7"
    t.string "services_text8"
    t.string "services_text9"
    t.string "services_text10"
    t.string "services_text11"
    t.string "services_text12"
    t.string "services_text13"
    t.string "services_text14"
    t.string "services_text15"
    t.string "services_text16"
    t.string "services_text17"
    t.string "services_text18"
    t.string "services_text19"
    t.string "services_text20"
    t.string "services_text21"
    t.string "services_text22"
    t.string "services_text23"
    t.string "services_text24"
    t.string "services_text25"
    t.string "services_text26"
    t.string "services_text27"
    t.string "services_text28"
    t.string "services_text29"
    t.string "services_text30"
    t.string "start_text1"
    t.string "start_text2"
    t.string "start_text3"
    t.string "start_button_text"
    t.boolean "show_home"
    t.boolean "show_about"
    t.boolean "show_stats"
    t.boolean "show_services"
    t.boolean "show_performance"
    t.boolean "show_get_started"
    t.boolean "show_contact"
    t.boolean "show_logo_image"
    t.boolean "show_logo_text"
    t.string "logo_text1"
    t.string "logo_text2"
    t.string "logo_text3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stats", force: :cascade do |t|
    t.string "string_1"
    t.string "string_2"
    t.string "string_3"
    t.string "string_4"
    t.string "string_5"
    t.string "string_num_1"
    t.string "string_num_2"
    t.string "string_num_3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.boolean "admin", default: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end

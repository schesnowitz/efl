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

ActiveRecord::Schema.define(version: 2019_11_10_072712) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abouts", force: :cascade do |t|
    t.boolean "hide_about", default: false
    t.string "about_string_1"
    t.string "about_string_2"
    t.string "about_string_3"
    t.string "about_string_4"
    t.string "about_string_5"
    t.string "about_string_6"
    t.string "about_string_7"
    t.string "about_string_8"
    t.string "about_string_9"
    t.string "about_string_10"
    t.string "about_string_11"
    t.string "about_string_12"
    t.string "about_string_13"
    t.string "about_string_14"
    t.string "about_string_15"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "app_settings", force: :cascade do |t|
    t.boolean "boolean_1", default: false
    t.boolean "boolean_2", default: false
    t.boolean "hide_logo_text", default: false
    t.boolean "hide_logo_image", default: false
    t.string "mailer_send_to_email1"
    t.string "mailer_send_to_email2"
    t.string "string_1"
    t.string "string_2"
    t.string "string_3"
    t.string "string_4"
    t.string "string_5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.boolean "hide_contact", default: false
    t.string "contact_string_1"
    t.string "contact_string_2"
    t.string "contact_string_3"
    t.string "contact_string_4"
    t.string "contact_string_5"
    t.string "contact_string_6"
    t.string "contact_string_7"
    t.string "contact_string_8"
    t.string "contact_string_9"
    t.string "contact_string_10"
    t.string "contact_string_11"
    t.string "contact_string_12"
    t.string "contact_string_13"
    t.string "contact_string_14"
    t.string "contact_string_15"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "footers", force: :cascade do |t|
    t.boolean "hide_footer", default: false
    t.string "footer_string_1"
    t.string "footer_string_2"
    t.string "footer_string_3"
    t.string "footer_string_4"
    t.string "footer_string_5"
    t.integer "footer_font_awesome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "headers", force: :cascade do |t|
    t.boolean "hide_header", default: false
    t.string "header_string_1"
    t.string "header_string_2"
    t.string "header_string_3"
    t.string "header_string_4"
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "performances", force: :cascade do |t|
    t.boolean "hide_performance", default: false
    t.string "performance_string_1"
    t.string "performance_string_2"
    t.string "performance_string_3"
    t.string "performance_string_4"
    t.string "performance_string_5"
    t.string "performance_string_6"
    t.string "performance_string_7"
    t.string "performance_string_8"
    t.string "performance_string_9"
    t.string "performance_string_10"
    t.string "performance_string_11"
    t.string "performance_string_12"
    t.string "performance_string_13"
    t.string "performance_string_14"
    t.string "performance_string_15"
    t.integer "performance_integer_1"
    t.integer "performance_integer_2"
    t.integer "performance_integer_3"
    t.integer "performance_integer_4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.boolean "hide_service", default: false
    t.string "service_string_1"
    t.string "service_string_2"
    t.string "service_string_3"
    t.string "service_string_4"
    t.string "service_string_5"
    t.string "service_string_6"
    t.string "service_string_7"
    t.string "service_string_8"
    t.string "service_string_9"
    t.string "service_string_10"
    t.string "service_string_11"
    t.string "service_string_12"
    t.string "service_string_13"
    t.string "service_string_14"
    t.string "service_string_15"
    t.string "service_string_16"
    t.string "service_string_17"
    t.string "service_string_18"
    t.string "service_string_19"
    t.string "service_string_20"
    t.string "service_string_21"
    t.string "service_string_22"
    t.string "service_string_23"
    t.string "service_string_24"
    t.string "service_string_25"
    t.string "service_string_26"
    t.string "service_string_27"
    t.string "service_string_28"
    t.string "service_string_29"
    t.string "service_string_30"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stats", force: :cascade do |t|
    t.boolean "hide_stat", default: false
    t.string "stat_string_1"
    t.string "stat_string_2"
    t.string "stat_string_3"
    t.string "stat_string_4"
    t.string "stat_string_5"
    t.string "stat_svg_1"
    t.string "stat_svg_2"
    t.string "stat_svg_3"
    t.string "stat_string_num_1"
    t.string "stat_string_num_2"
    t.string "stat_string_num_3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "take_actions", force: :cascade do |t|
    t.boolean "hide_take_action"
    t.string "take_action_string_1"
    t.string "take_action_string_2"
    t.string "take_action_string_3"
    t.string "take_action_string_4"
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

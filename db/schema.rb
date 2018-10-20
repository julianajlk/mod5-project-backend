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

ActiveRecord::Schema.define(version: 2018_10_17_144911) do

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

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "garments", force: :cascade do |t|
    t.string "name"
    t.string "file_upload"
    t.string "category"
    t.string "season"
    t.string "location"
    t.string "status"
    t.string "fabrication"
    t.integer "trim_button"
    t.integer "trim_label"
    t.integer "trim_zipper"
    t.integer "trim_hangtag"
    t.string "sizing"
    t.text "measurement"
    t.text "fit_comment"
    t.text "comment"
    t.string "url"
    t.bigint "brand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_garments_on_brand_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "file_upload"
    t.string "picture_thumb"
    t.string "dob"
    t.string "phone"
    t.string "location"
    t.string "position"
    t.string "department"
    t.string "url"
    t.integer "organizationable_id"
    t.string "organizationable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organizationable_type", "organizationable_id"], name: "index_users_on_organizationable_type_and_organizationable_id"
  end

  add_foreign_key "garments", "brands"
end

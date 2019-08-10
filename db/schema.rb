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

ActiveRecord::Schema.define(version: 2019_08_10_113324) do

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

  create_table "claims", force: :cascade do |t|
    t.bigint "listing_id"
    t.bigint "user_id"
    t.boolean "approved"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_claims_on_listing_id"
    t.index ["user_id"], name: "index_claims_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "text"
    t.bigint "writer_id"
    t.bigint "recipient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipient_id"], name: "index_comments_on_recipient_id"
    t.index ["writer_id"], name: "index_comments_on_writer_id"
  end

  create_table "creplies", force: :cascade do |t|
    t.text "text"
    t.bigint "writer_id"
    t.bigint "comment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_creplies_on_comment_id"
    t.index ["writer_id"], name: "index_creplies_on_writer_id"
  end

  create_table "listings", force: :cascade do |t|
    t.date "start_time"
    t.date "end_time"
    t.integer "price"
    t.bigint "motorhome_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.index ["motorhome_id"], name: "index_listings_on_motorhome_id"
    t.index ["user_id"], name: "index_listings_on_user_id"
  end

  create_table "motorhomes", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "year"
    t.integer "length"
    t.integer "beds"
    t.integer "price"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_motorhomes_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "text"
    t.bigint "writer_id"
    t.bigint "listing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rating"
    t.index ["listing_id"], name: "index_reviews_on_listing_id"
    t.index ["writer_id"], name: "index_reviews_on_writer_id"
  end

  create_table "rreplies", force: :cascade do |t|
    t.text "text"
    t.bigint "writer_id"
    t.bigint "review_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["review_id"], name: "index_rreplies_on_review_id"
    t.index ["writer_id"], name: "index_rreplies_on_writer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "claims", "listings"
  add_foreign_key "claims", "users"
  add_foreign_key "comments", "users", column: "recipient_id"
  add_foreign_key "comments", "users", column: "writer_id"
  add_foreign_key "creplies", "comments"
  add_foreign_key "creplies", "users", column: "writer_id"
  add_foreign_key "listings", "motorhomes"
  add_foreign_key "listings", "users"
  add_foreign_key "motorhomes", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "reviews", "listings"
  add_foreign_key "reviews", "users", column: "writer_id"
  add_foreign_key "rreplies", "reviews"
  add_foreign_key "rreplies", "users", column: "writer_id"
end

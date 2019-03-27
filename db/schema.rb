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

ActiveRecord::Schema.define(version: 2019_03_20_174848) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "photos", force: :cascade do |t|
    t.string "url"
    t.bigint "storage_id"
    t.bigint "vehicle_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["storage_id"], name: "index_photos_on_storage_id"
    t.index ["vehicle_id"], name: "index_photos_on_vehicle_id"
  end

  create_table "storages", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "height"
    t.integer "width"
    t.integer "depth"
    t.string "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price_per_week"
    t.integer "price_per_month"
    t.integer "price_per_six_month"
    t.string "location"
    t.integer "weight_capacity"
    t.string "storage_type"
    t.boolean "insurance"
    t.string "insurance_type"
    t.integer "price_per_day"
    t.index ["user_id"], name: "index_storages_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "driver", default: false
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "photo"
    t.string "driver_license_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehicles", force: :cascade do |t|
    t.bigint "user_id"
    t.string "make"
    t.integer "year"
    t.boolean "owner"
    t.string "color"
    t.string "inspection_card"
    t.boolean "diesel"
    t.boolean "property_insurance"
    t.boolean "insurance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_vehicles_on_user_id"
  end

  add_foreign_key "photos", "storages"
  add_foreign_key "photos", "vehicles"
  add_foreign_key "storages", "users"
  add_foreign_key "vehicles", "users"
end

# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150529032604) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "responsibles", force: :cascade do |t|
    t.string   "name"
    t.integer  "student_id"
    t.string   "occupation"
    t.string   "mobile_number"
    t.string   "residencial_number"
    t.string   "comercial_number"
    t.string   "relation_type"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "service_types", force: :cascade do |t|
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.integer  "service_type"
    t.integer  "tuition_id"
    t.float    "value"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.date     "enrollment_date"
    t.date     "birth_date"
    t.string   "address"
    t.string   "zip_code"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "tuition_statuses", force: :cascade do |t|
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tuitions", force: :cascade do |t|
    t.integer  "customer_id"
    t.date     "due_date"
    t.integer  "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  add_index "users", ["name"], name: "index_users_on_name", unique: true, using: :btree

end

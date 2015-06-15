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

ActiveRecord::Schema.define(version: 20150615054058) do

  create_table "a05b01_paxdata", id: false, force: :cascade do |t|
    t.integer  "Pax_Key",           limit: 4,  null: false
    t.integer  "Order_No",          limit: 4,  null: false
    t.datetime "Tour_Date",                    null: false
    t.string   "Region_Code",       limit: 4,  null: false
    t.string   "Region_Name",       limit: 40, null: false
    t.string   "Tour_Code",         limit: 16, null: false
    t.integer  "Pax_No",            limit: 4,  null: false
    t.string   "Tour_Type",         limit: 8,  null: false
    t.integer  "Effect_Mark",       limit: 4,  null: false
    t.integer  "Cancel_Mark",       limit: 4,  null: false
    t.datetime "Cancel_Time",                  null: false
    t.datetime "Issue_Cancel_Time",            null: false
    t.string   "Pax_Data",          limit: 8,  null: false
    t.string   "Pax_Type",          limit: 8,  null: false
    t.string   "Pax_Gender",        limit: 2,  null: false
    t.datetime "Pax_Birthday",                 null: false
    t.integer  "Pax_Age",           limit: 4,  null: false
    t.integer  "Tour_Leader_Mark",  limit: 4,  null: false
    t.string   "Foreign_Passport",  limit: 20, null: false
    t.integer  "Retail_Price",      limit: 4,  null: false
    t.string   "Pax_Title",         limit: 4,  null: false
    t.integer  "Ticket_Only_Mark",  limit: 4,  null: false
    t.integer  "Join_Tour_Mark",    limit: 4,  null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end

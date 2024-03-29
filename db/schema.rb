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

ActiveRecord::Schema.define(version: 20141101174755) do

  create_table "docs", force: true do |t|
    t.text     "title"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "docs", ["user_id", "created_at"], name: "index_docs_on_user_id_and_created_at"
  add_index "docs", ["user_id"], name: "index_docs_on_user_id"

  create_table "documents", force: true do |t|
    t.text     "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "sections", force: true do |t|
    t.text     "content"
    t.integer  "document_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "sections", ["document_id", "created_at"], name: "index_sections_on_document_id_and_created_at"
  add_index "sections", ["document_id"], name: "index_sections_on_document_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end

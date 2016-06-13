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

ActiveRecord::Schema.define(version: 20160610173307) do

  create_table "consumables", force: :cascade do |t|
    t.string   "genus"
    t.string   "model"
    t.integer  "Copier_id"
    t.integer  "Printer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "consumables", ["Copier_id"], name: "index_consumables_on_Copier_id"
  add_index "consumables", ["Printer_id"], name: "index_consumables_on_Printer_id"

  create_table "copiers", force: :cascade do |t|
    t.string   "ninventary"
    t.string   "nserie"
    t.string   "brand"
    t.string   "model"
    t.string   "nfactura"
    t.date     "buy_date"
    t.boolean  "operational",   default: true
    t.string   "reazon"
    t.text     "notes"
    t.integer  "Dependency_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "copiers", ["Dependency_id"], name: "index_copiers_on_Dependency_id"

  create_table "delegations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dependencies", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "telephone"
    t.string   "responsable"
    t.string   "responsable_email"
    t.integer  "Delegation_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "dependencies", ["Delegation_id"], name: "index_dependencies_on_Delegation_id"

  create_table "networks", force: :cascade do |t|
    t.string   "linktype"
    t.string   "location"
    t.string   "iprange"
    t.string   "ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "powers", force: :cascade do |t|
    t.string   "ninventary"
    t.string   "nserie"
    t.string   "brand"
    t.string   "model"
    t.string   "nfactura"
    t.date     "buy_date"
    t.boolean  "no_break",      default: false
    t.boolean  "operational",   default: true
    t.string   "reazon"
    t.text     "notes"
    t.integer  "Dependency_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "powers", ["Dependency_id"], name: "index_powers_on_Dependency_id"

  create_table "printers", force: :cascade do |t|
    t.string   "ninventary"
    t.string   "nserie"
    t.string   "brand"
    t.string   "model"
    t.string   "nfactura"
    t.date     "buy_date"
    t.string   "genus"
    t.boolean  "operational",   default: true
    t.string   "reazon"
    t.text     "notes"
    t.integer  "Dependency_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "printers", ["Dependency_id"], name: "index_printers_on_Dependency_id"

  create_table "statistics", force: :cascade do |t|
    t.string   "month"
    t.integer  "sheets"
    t.integer  "consumable"
    t.integer  "Copier_id"
    t.integer  "Printer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "statistics", ["Copier_id"], name: "index_statistics_on_Copier_id"
  add_index "statistics", ["Printer_id"], name: "index_statistics_on_Printer_id"

  create_table "telephones", force: :cascade do |t|
    t.string   "ninventary"
    t.string   "nserie"
    t.string   "brand"
    t.string   "model"
    t.string   "nfactura"
    t.date     "buy_date"
    t.string   "genus"
    t.string   "number"
    t.boolean  "operational",   default: true
    t.text     "reazon"
    t.text     "notes"
    t.integer  "Dependency_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "telephones", ["Dependency_id"], name: "index_telephones_on_Dependency_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "workers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "profile"
    t.integer  "Dependency_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "workers", ["Dependency_id"], name: "index_workers_on_Dependency_id"

end
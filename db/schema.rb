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

ActiveRecord::Schema.define(version: 20180706211056) do

  create_table "brand_models", force: :cascade do |t|
    t.string   "description"
    t.string   "brandx"
    t.string   "modelx"
    t.integer  "User_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "brand_models", ["User_id"], name: "index_brand_models_on_User_id"

  create_table "brokens", force: :cascade do |t|
    t.integer  "idEquipment"
    t.string   "gender"
    t.text     "notes"
    t.string   "picOf"
    t.string   "picSerie"
    t.string   "pic"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "Delegation_id"
  end

  add_index "brokens", ["Delegation_id"], name: "index_brokens_on_Delegation_id"

  create_table "common_errors", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "computer_brands", force: :cascade do |t|
    t.string   "name"
    t.string   "model"
    t.integer  "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "computer_brands", ["User_id"], name: "index_computer_brands_on_User_id"

  create_table "computers", force: :cascade do |t|
    t.string   "ninventary"
    t.string   "nserie"
    t.string   "brand"
    t.string   "model"
    t.string   "nfactura"
    t.date     "buy_date"
    t.string   "genus"
    t.string   "processor"
    t.string   "hd"
    t.string   "memory"
    t.boolean  "bluetooth"
    t.string   "macbluetooth"
    t.string   "os"
    t.string   "voffice"
    t.string   "users"
    t.string   "name"
    t.string   "workgroup"
    t.boolean  "wifi"
    t.string   "macwifi"
    t.string   "ipwifi"
    t.string   "maskwifi"
    t.string   "maclan"
    t.string   "iplan"
    t.string   "masklan"
    t.boolean  "operational",   default: true
    t.text     "reazon"
    t.text     "notes"
    t.integer  "Network_id"
    t.integer  "Dependency_id"
    t.integer  "Worker_id"
    t.integer  "User_id"
    t.integer  "Delegation_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "picture1"
    t.string   "picture2"
    t.string   "picture3"
  end

  add_index "computers", ["Delegation_id"], name: "index_computers_on_Delegation_id"
  add_index "computers", ["Dependency_id"], name: "index_computers_on_Dependency_id"
  add_index "computers", ["Network_id"], name: "index_computers_on_Network_id"
  add_index "computers", ["User_id"], name: "index_computers_on_User_id"
  add_index "computers", ["Worker_id"], name: "index_computers_on_Worker_id"

  create_table "consumables", force: :cascade do |t|
    t.string   "genus"
    t.string   "model"
    t.integer  "Copier_id"
    t.integer  "Printer_id"
    t.integer  "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "consumables", ["Copier_id"], name: "index_consumables_on_Copier_id"
  add_index "consumables", ["Printer_id"], name: "index_consumables_on_Printer_id"
  add_index "consumables", ["User_id"], name: "index_consumables_on_User_id"

  create_table "copiers", force: :cascade do |t|
    t.string   "ninventary"
    t.string   "nserie"
    t.string   "brand"
    t.string   "model"
    t.string   "nfactura"
    t.date     "buy_date"
    t.boolean  "net",           default: false
    t.string   "net_ip"
    t.string   "net_mask"
    t.string   "net_mac"
    t.boolean  "wifi",          default: false
    t.string   "wifi_ip"
    t.string   "wifi_mask"
    t.string   "wifi_mac"
    t.boolean  "operational",   default: true
    t.string   "reazon"
    t.text     "notes"
    t.integer  "Delegation_id"
    t.integer  "Dependency_id"
    t.integer  "Network_id"
    t.integer  "User_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "hostname"
  end

  add_index "copiers", ["Delegation_id"], name: "index_copiers_on_Delegation_id"
  add_index "copiers", ["Dependency_id"], name: "index_copiers_on_Dependency_id"
  add_index "copiers", ["Network_id"], name: "index_copiers_on_Network_id"
  add_index "copiers", ["User_id"], name: "index_copiers_on_User_id"

  create_table "delegations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "delegation_id"
  end

  add_index "delegations", ["delegation_id"], name: "index_delegations_on_delegation_id"

  create_table "dependencies", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "telephone"
    t.string   "responsable"
    t.string   "responsable_email"
    t.integer  "User_id"
    t.integer  "Delegation_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "dependencies", ["Delegation_id"], name: "index_dependencies_on_Delegation_id"
  add_index "dependencies", ["User_id"], name: "index_dependencies_on_User_id"

  create_table "equipment_logs", force: :cascade do |t|
    t.string   "genus"
    t.string   "key"
    t.date     "inDate"
    t.text     "diagnosis"
    t.text     "solution"
    t.date     "outDate"
    t.integer  "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "equipment_logs", ["User_id"], name: "index_equipment_logs_on_User_id"

  create_table "hardds", force: :cascade do |t|
    t.float    "size"
    t.string   "tsize"
    t.integer  "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "hardds", ["User_id"], name: "index_hardds_on_User_id"

  create_table "memos", force: :cascade do |t|
    t.float    "size"
    t.string   "msize"
    t.integer  "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "memos", ["User_id"], name: "index_memos_on_User_id"

  create_table "networks", force: :cascade do |t|
    t.string   "linktype"
    t.boolean  "wifirouter",      default: false
    t.string   "ssid_name"
    t.string   "location"
    t.string   "iprange"
    t.string   "ip"
    t.string   "associed_number"
    t.integer  "User_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "networks", ["User_id"], name: "index_networks_on_User_id"

  create_table "officevs", force: :cascade do |t|
    t.string   "name"
    t.integer  "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "officevs", ["User_id"], name: "index_officevs_on_User_id"

  create_table "osies", force: :cascade do |t|
    t.string   "name"
    t.string   "version"
    t.integer  "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "osies", ["User_id"], name: "index_osies_on_User_id"

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
    t.integer  "User_id"
    t.integer  "Delegation_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "powers", ["Delegation_id"], name: "index_powers_on_Delegation_id"
  add_index "powers", ["Dependency_id"], name: "index_powers_on_Dependency_id"
  add_index "powers", ["User_id"], name: "index_powers_on_User_id"

  create_table "printers", force: :cascade do |t|
    t.string   "ninventary"
    t.string   "nserie"
    t.string   "brand"
    t.string   "model"
    t.string   "nfactura"
    t.date     "buy_date"
    t.string   "genus"
    t.boolean  "net",           default: false
    t.string   "net_ip"
    t.string   "net_mask"
    t.string   "net_mac"
    t.boolean  "wifi",          default: false
    t.string   "wifi_ip"
    t.string   "wifi_mask"
    t.string   "wifi_mac"
    t.boolean  "operational",   default: true
    t.string   "reazon"
    t.text     "notes"
    t.integer  "Delegation_id"
    t.integer  "Dependency_id"
    t.integer  "Network_id"
    t.integer  "User_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "hostname"
  end

  add_index "printers", ["Delegation_id"], name: "index_printers_on_Delegation_id"
  add_index "printers", ["Dependency_id"], name: "index_printers_on_Dependency_id"
  add_index "printers", ["Network_id"], name: "index_printers_on_Network_id"
  add_index "printers", ["User_id"], name: "index_printers_on_User_id"

  create_table "processors", force: :cascade do |t|
    t.string   "brand"
    t.string   "genus"
    t.string   "modelp"
    t.string   "speed"
    t.integer  "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "processors", ["User_id"], name: "index_processors_on_User_id"

  create_table "providers", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "telephone"
    t.string   "rfc"
    t.string   "email"
    t.integer  "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "providers", ["User_id"], name: "index_providers_on_User_id"

  create_table "scanners", force: :cascade do |t|
    t.string   "ninventary"
    t.string   "nserie"
    t.string   "brand"
    t.string   "model"
    t.string   "nfactura"
    t.date     "buy_date"
    t.boolean  "net",           default: false
    t.string   "ipnet"
    t.string   "masknet"
    t.string   "netmac"
    t.boolean  "operational",   default: true
    t.text     "reazon"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "Delegation_id"
    t.integer  "Dependency_id"
    t.integer  "Network_id"
    t.integer  "User_id"
  end

  add_index "scanners", ["Delegation_id"], name: "index_scanners_on_Delegation_id"
  add_index "scanners", ["Dependency_id"], name: "index_scanners_on_Dependency_id"
  add_index "scanners", ["Network_id"], name: "index_scanners_on_Network_id"
  add_index "scanners", ["User_id"], name: "index_scanners_on_User_id"

  create_table "screens", force: :cascade do |t|
    t.string   "ninventary"
    t.string   "nserie"
    t.string   "brand"
    t.string   "model"
    t.string   "nfactura"
    t.date     "buy_date"
    t.float    "inch"
    t.boolean  "operational",   default: true
    t.text     "reazon"
    t.text     "notes"
    t.integer  "Dependency_id"
    t.integer  "Computer_id"
    t.integer  "User_id"
    t.integer  "Delegation_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "screens", ["Computer_id"], name: "index_screens_on_Computer_id"
  add_index "screens", ["Delegation_id"], name: "index_screens_on_Delegation_id"
  add_index "screens", ["Dependency_id"], name: "index_screens_on_Dependency_id"
  add_index "screens", ["User_id"], name: "index_screens_on_User_id"

  create_table "service_requests", force: :cascade do |t|
    t.string   "idFolio"
    t.string   "kind"
    t.string   "itDiagnosis"
    t.string   "ProviderDiagnosis"
    t.string   "material"
    t.string   "DocumentRequest"
    t.date     "RequestDate"
    t.date     "ExecutionDate"
    t.text     "History"
    t.text     "Priority"
    t.integer  "Delegation_id"
    t.integer  "Dependency_id"
    t.integer  "Provider_id"
    t.integer  "Copier_id"
    t.integer  "Printer_id"
    t.integer  "Screen_id"
    t.integer  "Telephone_id"
    t.integer  "Power_id"
    t.integer  "User_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "Scanner_id"
  end

  add_index "service_requests", ["Copier_id"], name: "index_service_requests_on_Copier_id"
  add_index "service_requests", ["Delegation_id"], name: "index_service_requests_on_Delegation_id"
  add_index "service_requests", ["Dependency_id"], name: "index_service_requests_on_Dependency_id"
  add_index "service_requests", ["Power_id"], name: "index_service_requests_on_Power_id"
  add_index "service_requests", ["Printer_id"], name: "index_service_requests_on_Printer_id"
  add_index "service_requests", ["Provider_id"], name: "index_service_requests_on_Provider_id"
  add_index "service_requests", ["Scanner_id"], name: "index_service_requests_on_Scanner_id"
  add_index "service_requests", ["Screen_id"], name: "index_service_requests_on_Screen_id"
  add_index "service_requests", ["Telephone_id"], name: "index_service_requests_on_Telephone_id"
  add_index "service_requests", ["User_id"], name: "index_service_requests_on_User_id"

  create_table "statistics", force: :cascade do |t|
    t.string   "month"
    t.integer  "sheets"
    t.integer  "consumable"
    t.integer  "Delegation_id"
    t.integer  "Dependency_id"
    t.integer  "Copier_id"
    t.integer  "Printer_id"
    t.integer  "User_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "statistics", ["Copier_id"], name: "index_statistics_on_Copier_id"
  add_index "statistics", ["Delegation_id"], name: "index_statistics_on_Delegation_id"
  add_index "statistics", ["Dependency_id"], name: "index_statistics_on_Dependency_id"
  add_index "statistics", ["Printer_id"], name: "index_statistics_on_Printer_id"
  add_index "statistics", ["User_id"], name: "index_statistics_on_User_id"

  create_table "telephones", force: :cascade do |t|
    t.string   "ninventary"
    t.string   "nserie"
    t.string   "brand"
    t.string   "model"
    t.string   "nfactura"
    t.date     "buy_date"
    t.string   "genus"
    t.string   "ip"
    t.string   "mac"
    t.string   "number"
    t.boolean  "operational",   default: true
    t.text     "reazon"
    t.text     "notes"
    t.integer  "Delegation_id"
    t.integer  "Dependency_id"
    t.integer  "User_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "telephones", ["Delegation_id"], name: "index_telephones_on_Delegation_id"
  add_index "telephones", ["Dependency_id"], name: "index_telephones_on_Dependency_id"
  add_index "telephones", ["User_id"], name: "index_telephones_on_User_id"

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
    t.integer  "User_id"
    t.integer  "Delegation_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "workers", ["Delegation_id"], name: "index_workers_on_Delegation_id"
  add_index "workers", ["Dependency_id"], name: "index_workers_on_Dependency_id"
  add_index "workers", ["User_id"], name: "index_workers_on_User_id"

end

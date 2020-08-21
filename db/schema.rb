# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_21_120538) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "location_results", force: :cascade do |t|
    t.bigint "location_id", null: false
    t.bigint "result_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_location_results_on_location_id"
    t.index ["result_id"], name: "index_location_results_on_result_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "results", force: :cascade do |t|
    t.string "date"
    t.string "time"
    t.string "temp"
    t.string "trub"
    t.string "stage"
    t.string "tryp_ppb"
    t.string "tryp_temp_corr"
    t.string "coil_coll_100ml"
    t.string "cable_power"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "location_results", "locations"
  add_foreign_key "location_results", "results"
end

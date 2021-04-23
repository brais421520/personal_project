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

ActiveRecord::Schema.define(version: 2021_04_22_164440) do

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "countries_dives", id: false, force: :cascade do |t|
    t.integer "dife_id", null: false
    t.integer "country_id", null: false
    t.index "\"countries_id\"", name: "index_countries_dives_on_countries_id"
    t.index "\"dives_id\"", name: "index_countries_dives_on_dives_id"
  end

  create_table "dive_leaders", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dive_leaders_dives", id: false, force: :cascade do |t|
    t.integer "dife_id", null: false
    t.integer "dive_leader_id", null: false
    t.index "\"dive_leaders_id\"", name: "index_dive_leaders_dives_on_dive_leaders_id"
    t.index "\"dives_id\"", name: "index_dive_leaders_dives_on_dives_id"
  end

  create_table "dives", force: :cascade do |t|
    t.date "data"
    t.time "start_time"
    t.time "end_time"
    t.integer "start_pressure"
    t.integer "end_pressure"
    t.integer "max_depth"
    t.string "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dives_locations", id: false, force: :cascade do |t|
    t.integer "dife_id", null: false
    t.integer "location_id", null: false
    t.index "\"dives_id\"", name: "index_dives_locations_on_dives_id"
    t.index "\"locations_id\"", name: "index_dives_locations_on_locations_id"
  end

  create_table "golf_locations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "golf_locations_scores", id: false, force: :cascade do |t|
    t.integer "golf_score_id", null: false
    t.integer "golf_location_id", null: false
    t.index "\"golf_locations_id\"", name: "index_golf_locations_scores_on_golf_locations_id"
    t.index "\"golf_scores_id\"", name: "index_golf_locations_scores_on_golf_scores_id"
  end

  create_table "golf_scores", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

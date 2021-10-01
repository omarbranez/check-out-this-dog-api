# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_01_170653) do

  create_table "dogs", force: :cascade do |t|
    t.string "breed"
    t.string "temperament"
    t.string "life_span"
    t.string "alt_names"
    t.string "wikipedia_url"
    t.string "origin"
    t.string "weight"
    t.string "country_code"
    t.string "height"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "encounters", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "dog_id", null: false
    t.string "name"
    t.string "color"
    t.integer "age"
    t.string "gender"
    t.text "features"
    t.text "demeanor"
    t.datetime "ping"
    t.integer "reactions"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dog_id"], name: "index_encounters_on_dog_id"
    t.index ["user_id"], name: "index_encounters_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "encounters", "dogs"
  add_foreign_key "encounters", "users"
end

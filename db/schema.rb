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

ActiveRecord::Schema.define(version: 2021_06_15_151740) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "personals", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "resource_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resource_id"], name: "index_personals_on_resource_id"
    t.index ["user_id"], name: "index_personals_on_user_id"
  end

  create_table "resources", force: :cascade do |t|
    t.string "postType"
    t.string "topic"
    t.integer "postScore"
    t.string "content"
    t.string "source"
    t.string "desc"
    t.string "imgUrl"
    t.string "audioUrl"
    t.string "author"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "firebaseId"
    t.string "name"
    t.integer "userScore"
    t.string "careType"
    t.string "posts", default: [], array: true
    t.integer "prevScores", default: [], array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "personals", "resources"
  add_foreign_key "personals", "users"
end

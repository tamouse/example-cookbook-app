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

ActiveRecord::Schema.define(version: 20171104220559) do

  create_table "ingredients", force: :cascade do |t|
    t.integer "recipe_id"
    t.string "name", null: false
    t.decimal "quantity"
    t.integer "measure_id"
    t.text "prep_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["measure_id"], name: "index_ingredients_on_measure_id"
    t.index ["recipe_id"], name: "index_ingredients_on_recipe_id"
  end

  create_table "measures", force: :cascade do |t|
    t.string "name"
    t.string "abbrev"
  end

  create_table "recipes", force: :cascade do |t|
    t.integer "user_id"
    t.string "name", null: false
    t.text "description"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_recipes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

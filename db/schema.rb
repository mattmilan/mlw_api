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

ActiveRecord::Schema.define(version: 20180211055159) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "containers", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "img_url"
    t.string "element"
    t.string "origin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "img_url"
    t.string "request"
    t.string "reward"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "familiars", force: :cascade do |t|
    t.string "name"
    t.string "tooltip"
    t.string "description"
    t.string "img_url"
    t.string "element"
    t.string "origin"
    t.string "speed"
    t.string "memory"
    t.string "disicpline"
    t.string "distracted_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.bigint "recipe_id"
    t.bigint "container_id"
    t.string "name"
    t.string "tooltip"
    t.string "description"
    t.string "img_url"
    t.string "element"
    t.string "origin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["container_id"], name: "index_ingredients_on_container_id"
    t.index ["recipe_id"], name: "index_ingredients_on_recipe_id"
  end

  create_table "intruders", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "img_url"
    t.string "wants"
    t.string "fears"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.bigint "spellbook_id"
    t.string "name"
    t.string "description"
    t.string "img_url"
    t.string "effect"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spellbook_id"], name: "index_recipes_on_spellbook_id"
  end

  create_table "spellbooks", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "witches", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "img_url"
    t.integer "knowledge"
    t.integer "cuteness"
    t.integer "quickness"
    t.integer "patience"
    t.string "favorite_familar"
    t.string "favorite_element"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "ingredients", "containers"
  add_foreign_key "ingredients", "recipes"
  add_foreign_key "recipes", "spellbooks"
end

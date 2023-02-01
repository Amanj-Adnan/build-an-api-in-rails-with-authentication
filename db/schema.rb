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

ActiveRecord::Schema[7.0].define(version: 2023_01_31_175259) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "developer_users", force: :cascade do |t|
    t.string "private_api_key_bidx"
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.text "private_api_key_ciphertext"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["private_api_key_bidx"], name: "index_developer_users_on_private_api_key_bidx"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "developer_user_id"
    t.index ["developer_user_id"], name: "index_posts_on_developer_user_id"
  end

end

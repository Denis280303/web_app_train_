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

ActiveRecord::Schema.define(version: 2022_08_19_095300) do

  create_table "railway_stations", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "railway_stations_routes", force: :cascade do |t|
    t.integer "railway_station_id"
    t.integer "route_id"
    t.integer "station_index"
    t.integer "position"
    t.date "departure_time"
    t.date "arrival_time"
  end

  create_table "routes", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "train_id"
    t.integer "route_id"
    t.text "user_first_name"
    t.text "user_last_name"
    t.text "user_fathers_name"
    t.text "user_passport"
    t.integer "start_station_id"
    t.integer "end_station_id"
    t.integer "user_id"
    t.index ["route_id"], name: "index_tickets_on_route_id"
    t.index ["train_id"], name: "index_tickets_on_train_id"
  end

  create_table "trains", force: :cascade do |t|
    t.string "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "route_id"
    t.integer "current_station_id"
    t.boolean "order_wagon"
    t.index ["current_station_id"], name: "index_trains_on_current_station_id"
    t.index ["route_id"], name: "index_trains_on_route_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.boolean "admin", default: false
    t.text "first_name"
    t.text "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wagons", force: :cascade do |t|
    t.integer "train_id"
    t.string "type_wag"
    t.integer "high_seats"
    t.integer "low_seats"
    t.integer "current_train_id"
    t.integer "number_wag"
    t.integer "side_high_seats"
    t.integer "side_low_seats"
    t.integer "econom_seats"
    t.string "type"
    t.index ["current_train_id"], name: "index_wagons_on_current_train_id"
    t.index ["train_id"], name: "index_wagons_on_train_id"
  end

end

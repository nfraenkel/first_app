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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130213222226) do

  create_table "games", :force => true do |t|
    t.string   "team1"
    t.string   "team2"
    t.integer  "team1score"
    t.integer  "team2score"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "players", :force => true do |t|
    t.string   "first"
    t.string   "last"
    t.integer  "team_id"
    t.integer  "games_played"
    t.integer  "goals"
    t.integer  "assists"
    t.integer  "shots"
    t.integer  "tackles"
    t.integer  "blocks"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "players", ["team_id"], :name => "index_players_on_team_id"

  create_table "pledges", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.integer  "games_played"
    t.integer  "wins"
    t.integer  "losses"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "email"
    t.string   "hometown"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end

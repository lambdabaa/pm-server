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

ActiveRecord::Schema.define(:version => 20121224173324) do

  create_table "assignments", :force => true do |t|
    t.integer  "task_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "assignments", ["task_id"], :name => "index_assignments_on_task_id"
  add_index "assignments", ["user_id"], :name => "index_assignments_on_user_id"

  create_table "categorizations", :force => true do |t|
    t.integer  "task_id"
    t.integer  "tag_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "categorizations", ["tag_id"], :name => "index_categorizations_on_tag_id"
  add_index "categorizations", ["task_id"], :name => "index_categorizations_on_task_id"

  create_table "comments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "task_id"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["task_id"], :name => "index_comments_on_task_id"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tasks", :force => true do |t|
    t.integer  "creator_id"
    t.string   "title"
    t.text     "description"
    t.date     "day"
    t.time     "time"
    t.integer  "priority"
    t.integer  "status"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "tasks", ["creator_id"], :name => "index_tasks_on_creator_id"
  add_index "tasks", ["day"], :name => "index_tasks_on_day"
  add_index "tasks", ["priority"], :name => "index_tasks_on_priority"
  add_index "tasks", ["time"], :name => "index_tasks_on_time"
  add_index "tasks", ["title"], :name => "index_tasks_on_title"

  create_table "users", :force => true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["first"], :name => "index_users_on_first"
  add_index "users", ["last"], :name => "index_users_on_last"

end

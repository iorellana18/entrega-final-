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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141208210809) do

  create_table "accounts", force: true do |t|
    t.integer  "key_user_id",           limit: 8, null: false
    t.string   "user_twitter",                    null: false
    t.string   "user_name",                       null: false
    t.integer  "type_account",                    null: false
    t.integer  "data_account_event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["data_account_event_id"], name: "DAE_id_UNIQUE", unique: true, using: :btree
  add_index "accounts", ["data_account_event_id"], name: "index1", using: :btree
  add_index "accounts", ["key_user_id"], name: "key_user_id_UNIQUE", unique: true, using: :btree
  add_index "accounts", ["user_twitter"], name: "user_twitter_UNIQUE", unique: true, using: :btree

  create_table "accounts_tweets", force: true do |t|
    t.integer  "account_id", null: false
    t.integer  "tweet_id",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts_tweets", ["account_id", "tweet_id"], name: "a_t_id_UNIQUE", unique: true, using: :btree
  add_index "accounts_tweets", ["account_id", "tweet_id"], name: "index18", using: :btree

  create_table "addresses", force: true do |t|
    t.boolean  "national"
    t.boolean  "headquarters"
    t.string   "address_all_in",  null: false
    t.integer  "organization_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["address_all_in"], name: "address_all_in_UNIQUE", unique: true, using: :btree
  add_index "addresses", ["organization_id"], name: "index2", using: :btree

  create_table "advertises", force: true do |t|
    t.datetime "date_origin_advertise"
    t.datetime "date_end_advertise"
    t.integer  "account_id",            null: false
    t.integer  "event_id",              null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "advertises", ["account_id", "event_id"], name: "a_e_id_UNIQUE", unique: true, using: :btree
  add_index "advertises", ["account_id", "event_id"], name: "index3", using: :btree

  create_table "batch_deletions", force: true do |t|
    t.integer  "num_tweets_delete"
    t.datetime "date_until_delete_tweets"
    t.integer  "num_account_delete"
    t.datetime "date_until_delete_account"
    t.integer  "num_evaluation_delete"
    t.datetime "date_delete_evaluation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.string   "emails_contact"
    t.string   "country_contact"
    t.string   "phones_contact"
    t.integer  "organization_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["organization_id"], name: "index5", using: :btree

  create_table "data_account_events", force: true do |t|
    t.string   "location"
    t.string   "url_twitter_event"
    t.string   "url_official"
    t.integer  "num_tweets"
    t.integer  "num_photo_and_video"
    t.integer  "num_following"
    t.integer  "num_followers"
    t.boolean  "account_official"
    t.datetime "date_creation_account"
    t.integer  "account_id",            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "data_account_events", ["account_id"], name: "account_id_UNIQUE", unique: true, using: :btree
  add_index "data_account_events", ["account_id"], name: "index7", using: :btree
  add_index "data_account_events", ["url_twitter_event"], name: "url_twitter_event_UNIQUE", unique: true, using: :btree

  create_table "data_evaluation_real_times", force: true do |t|
    t.integer  "evaluation_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "data_evaluation_real_times", ["evaluation_id"], name: "evaluation_id_UNIQUE", unique: true, using: :btree
  add_index "data_evaluation_real_times", ["evaluation_id"], name: "index8", using: :btree

  create_table "data_tweet_reviews", force: true do |t|
    t.boolean  "geo"
    t.boolean  "state",            null: false
    t.string   "geo_cord"
    t.string   "city_tweet"
    t.string   "comuna_tweet"
    t.integer  "sensitivity_rank"
    t.integer  "tweet_id",         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "data_tweet_reviews", ["tweet_id"], name: "index9", using: :btree
  add_index "data_tweet_reviews", ["tweet_id"], name: "tweet_id_UNIQUE", unique: true, using: :btree

  create_table "evaluation_account_events", force: true do |t|
    t.integer  "num_followers_start"
    t.integer  "num_followers_end"
    t.integer  "evaluation_id",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "evaluation_account_events", ["evaluation_id"], name: "evaluation_id_UNIQUE", unique: true, using: :btree
  add_index "evaluation_account_events", ["evaluation_id"], name: "index10", using: :btree

  create_table "evaluations", force: true do |t|
    t.datetime "date_start_evaluation"
    t.datetime "date_end_evaluation"
    t.integer  "num_mentions"
    t.integer  "num_mentions_positive"
    t.integer  "num_mentions_negative"
    t.integer  "num_user_active"
    t.boolean  "evaluation_real_time"
    t.integer  "review_event_id",              null: false
    t.integer  "data_evaluation_real_time_id"
    t.integer  "evaluation_account_event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "evaluations", ["data_evaluation_real_time_id", "evaluation_account_event_id"], name: "index11", using: :btree
  add_index "evaluations", ["data_evaluation_real_time_id"], name: "data_evaluation_real_time_id_UNIQUE", unique: true, using: :btree
  add_index "evaluations", ["evaluation_account_event_id"], name: "evaluation_account_event_id_UNIQUE", unique: true, using: :btree

  create_table "events", force: true do |t|
    t.string   "name_event",         null: false
    t.string   "type_of_event"
    t.text     "description"
    t.string   "event_location"
    t.string   "event_price_all_in"
    t.integer  "num_turnout"
    t.string   "comuna_event"
    t.datetime "start_date_event"
    t.datetime "ending_date_event"
    t.integer  "review_event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["name_event"], name: "name_event_UNIQUE", unique: true, using: :btree
  add_index "events", ["review_event_id"], name: "index12", using: :btree
  add_index "events", ["review_event_id"], name: "review_event_id_UNIQUE", unique: true, using: :btree

  create_table "events_organizations", force: true do |t|
    t.integer  "event_id",        null: false
    t.integer  "organization_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events_organizations", ["event_id", "organization_id"], name: "e_o_id_UNIQUE", unique: true, using: :btree
  add_index "events_organizations", ["event_id", "organization_id"], name: "index15", using: :btree

  create_table "events_tweets", force: true do |t|
    t.integer  "event_id",   null: false
    t.integer  "tweet_id",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events_tweets", ["event_id", "tweet_id"], name: "e_t_id_UNIQUE", unique: true, using: :btree
  add_index "events_tweets", ["event_id", "tweet_id"], name: "index19", using: :btree

  create_table "hashtags", force: true do |t|
    t.datetime "date_publish_hashtag"
    t.boolean  "official",                         null: false
    t.integer  "num_mentions_hashtag", default: 0
    t.string   "hashtag_content",                  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hashtags", ["hashtag_content"], name: "hashtag_content_UNIQUE", unique: true, using: :btree

  create_table "hashtags_events", force: true do |t|
    t.integer  "hashtag_id", null: false
    t.integer  "event_id",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hashtags_events", ["hashtag_id", "event_id"], name: "h_e_id_UNIQUE", unique: true, using: :btree
  add_index "hashtags_events", ["hashtag_id", "event_id"], name: "index17", using: :btree

  create_table "hashtags_tweets", force: true do |t|
    t.integer  "hashtag_id", null: false
    t.integer  "tweet_id",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hashtags_tweets", ["hashtag_id", "tweet_id"], name: "h_t_id_UNIQUE", unique: true, using: :btree
  add_index "hashtags_tweets", ["hashtag_id", "tweet_id"], name: "index6", using: :btree

  create_table "key_words_events", force: true do |t|
    t.string   "palabra"
    t.integer  "event_id",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "key_words_events", ["event_id"], name: "index16", using: :btree

  create_table "key_words_sensitives", force: true do |t|
    t.string   "word",       null: false
    t.integer  "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organizations", force: true do |t|
    t.string   "name_organization", null: false
    t.string   "url_organization"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "organizations", ["name_organization"], name: "name_organization_UNIQUE", unique: true, using: :btree
  add_index "organizations", ["url_organization"], name: "url_organization_UNIQUE", unique: true, using: :btree

  create_table "review_account_events", force: true do |t|
    t.integer  "num_followers_start_review"
    t.integer  "num_followers_end_review"
    t.integer  "review_event_id",            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "review_account_events", ["review_event_id"], name: "index20", using: :btree
  add_index "review_account_events", ["review_event_id"], name: "review_event_id_UNIQUE", unique: true, using: :btree

  create_table "review_events", force: true do |t|
    t.datetime "start_date_review"
    t.datetime "ending_date_review"
    t.integer  "num_of_mentions"
    t.integer  "num_active_users"
    t.float    "passing_rate",              limit: 24
    t.integer  "num_mentions_positive_sum"
    t.integer  "num_mentions_negative_sum"
    t.integer  "event_id",                             null: false
    t.integer  "review_account_event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "review_events", ["event_id", "review_account_event_id"], name: "index21", using: :btree
  add_index "review_events", ["event_id"], name: "event_id_UNIQUE", unique: true, using: :btree
  add_index "review_events", ["review_account_event_id"], name: "review_account_event_id_UNIQUE", unique: true, using: :btree

  create_table "trademarks", force: true do |t|
    t.string   "name_mark"
    t.integer  "organization_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trademarks", ["name_mark"], name: "name_mark_UNIQUE", unique: true, using: :btree
  add_index "trademarks", ["organization_id"], name: "index23", using: :btree

  create_table "tweets", force: true do |t|
    t.integer  "key_tw_id",            limit: 8, null: false
    t.integer  "num_favorite"
    t.integer  "num_retweet"
    t.integer  "num_reply"
    t.string   "content_tweet",                  null: false
    t.integer  "account_id",                     null: false
    t.integer  "data_tweet_review_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tweets", ["account_id"], name: "index22", using: :btree
  add_index "tweets", ["data_tweet_review_id"], name: "data_tweet_review_id_UNIQUE", unique: true, using: :btree
  add_index "tweets", ["data_tweet_review_id"], name: "index26", using: :btree

end

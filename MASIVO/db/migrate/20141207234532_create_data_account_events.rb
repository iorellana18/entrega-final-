class CreateDataAccountEvents < ActiveRecord::Migration
  def change
    create_table :data_account_events do |t|
      t.string :location
      t.string :url_twitter_event
      t.string :url_official
      t.integer :num_tweets
      t.integer :num_photo_and_video
      t.integer :num_following
      t.integer :num_followers
      t.boolean :account_official
      t.datetime :date_creation_account
      t.integer :account_id, :null => false

      t.timestamps
    end

    add_index "data_account_events", ["account_id"], name: "account_id_UNIQUE", unique: true, using: :btree
    add_index "data_account_events", ["url_twitter_event"], name: "url_twitter_event_UNIQUE", unique: true, using: :btree
    add_index "data_account_events", ["account_id"], name: "index7", using: :btree

  end
end

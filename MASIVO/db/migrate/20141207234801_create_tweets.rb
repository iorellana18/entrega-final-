class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer :key_tw_id, :null => false
      t.integer :num_favorite
      t.integer :num_retweet
      t.integer :num_reply
      t.string :content_tweet, :null => false
      t.integer :account_id, :null => false
      t.integer :data_tweet_review_id

      t.timestamps
    end

    add_index "tweets", ["data_tweet_review_id"], name: "data_tweet_review_id_UNIQUE", unique: true, using: :btree
    add_index "tweets", ["key_tw_id"], name: "key_tw_id_UNIQUE", unique: true, using: :btree
    add_index "tweets", ["account_id"], name: "index22", using: :btree
    add_index "tweets", ["data_tweet_review_id"], name: "index26", using: :btree

  end
end

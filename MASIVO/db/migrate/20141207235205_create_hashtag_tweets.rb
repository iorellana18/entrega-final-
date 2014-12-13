class CreateHashtagTweets < ActiveRecord::Migration
  def change
    create_table :hashtag_tweets do |t|
      t.belongs_to :hashtag, :null => false
      t.belongs_to :tweet, :null => false
      t.timestamps
    end

    add_index "hashtag_tweets", ["hashtag_id","tweet_id"], name: "index6", using: :btree
    add_index "hashtag_tweets", ["hashtag_id","tweet_id"], name: "h_t_id_UNIQUE", unique: true, using: :btree

  end
end

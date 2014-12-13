class CreateEventTweets < ActiveRecord::Migration
  def change
    create_table :event_tweets do |t|
      t.belongs_to :event, :null => false
      t.belongs_to :tweet, :null => false
      t.timestamps
    end

    add_index "event_tweets", ["event_id","tweet_id"], name: "index19", using: :btree
    add_index "event_tweets", ["event_id","tweet_id"], name: "e_t_id_UNIQUE", unique: true, using: :btree

  end
end

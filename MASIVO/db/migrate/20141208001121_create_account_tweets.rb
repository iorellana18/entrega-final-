class CreateAccountTweets < ActiveRecord::Migration
  def change
    create_table :account_tweets do |t|
      t.belongs_to :account, :null => false
      t.belongs_to :tweet, :null => false
      t.timestamps
    end

    add_index "account_tweets", ["account_id","tweet_id"], name: "index18", using: :btree
    add_index "account_tweets", ["account_id","tweet_id"], name: "a_t_id_UNIQUE", unique: true, using: :btree

  end
end

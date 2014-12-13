class CreateDataTweetReviews < ActiveRecord::Migration
  def change
    create_table :data_tweet_reviews do |t|
      t.boolean :geo
      t.boolean :state, :null => false
      t.string :geo_cord
      t.string :city_tweet
      t.string :comuna_tweet
      t.integer :sensitivity_rank
      t.integer :tweet_id, :null => false

      t.timestamps
    end

    add_index "data_tweet_reviews", ["tweet_id"], name: "index9", using: :btree
    add_index "data_tweet_reviews", ["tweet_id"], name: "tweet_id_UNIQUE", unique: true, using: :btree

  end
end

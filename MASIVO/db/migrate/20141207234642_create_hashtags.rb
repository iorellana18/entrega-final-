class CreateHashtags < ActiveRecord::Migration
  def change
    create_table :hashtags do |t|
      t.datetime :date_publish_hashtag
      t.boolean :official, :null => false
      t.integer :num_mentions_hashtag
      t.string :hashtag_content, :null => false

      t.timestamps
    end

    add_index "hashtags", ["hashtag_content"], name: "hashtag_content_UNIQUE", unique: true, using: :btree

  end
end

class CreateReviewEvents < ActiveRecord::Migration
  def change
    create_table :review_events do |t|
      t.datetime :start_date_review
      t.datetime :ending_date_review
      t.integer :num_of_mentions
      t.integer :num_active_users
      t.float :passing_rate
      t.integer :num_mentions_positive_sum
      t.integer :num_mentions_negative_sum
      t.integer :event_id, :null => false
      t.integer :review_account_event_id

      t.timestamps
    end

    add_index "review_events", ["event_id", "review_account_event_id"], name: "index21", using: :btree
    add_index "review_events", ["event_id"], name: "event_id_UNIQUE", unique: true, using: :btree
    add_index "review_events", ["review_account_event_id"], name: "review_account_event_id_UNIQUE", unique: true, using: :btree

  end
end

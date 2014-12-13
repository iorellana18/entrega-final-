class CreateReviewAccountEvents < ActiveRecord::Migration
  def change
    create_table :review_account_events do |t|
      t.integer :num_followers_start_review
      t.integer :num_followers_end_review
      t.integer :review_event_id, :null => false

      t.timestamps
    end

    add_index "review_account_events", ["review_event_id"], name: "index20", using: :btree
    add_index "review_account_events", ["review_event_id"], name: "review_event_id_UNIQUE", unique: true, using: :btree

  end
end

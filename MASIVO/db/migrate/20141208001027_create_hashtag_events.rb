class CreateHashtagEvents < ActiveRecord::Migration
  def change
    create_table :hashtag_events do |t|
      t.belongs_to :hashtag, :null => false
      t.belongs_to :event, :null => false
      t.timestamps
    end

    add_index "hashtag_events", ["hashtag_id","event_id"], name: "index17", using: :btree
	add_index "hashtag_events", ["hashtag_id","event_id"], name: "h_e_id_UNIQUE", unique: true, using: :btree

  end
end

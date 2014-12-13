class CreateKeyWordsEvents < ActiveRecord::Migration
  def change
    create_table :key_words_events do |t|
      t.string :palabra
      t.integer :event_id, :null => false

      t.timestamps
    end

     add_index "key_words_events", ["event_id"], name: "index16", using: :btree

  end
end

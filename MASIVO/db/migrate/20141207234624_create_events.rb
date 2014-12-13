class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name_event, :null => false
      t.string :type_of_event
      t.text :description
      t.string :event_location
      t.string :event_price_all_in
      t.integer :num_turnout
      t.string :comuna_event
      t.datetime :start_date_event
      t.datetime :ending_date_event
      t.integer :review_event_id

      t.timestamps
    end

    add_index "events", ["name_event"], name: "name_event_UNIQUE", unique: true, using: :btree
    add_index "events", ["review_event_id"], name: "index12", using: :btree
    add_index "events", ["review_event_id"], name: "review_event_id_UNIQUE", unique: true, using: :btree

  end
end

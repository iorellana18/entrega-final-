class CreateAdvertises < ActiveRecord::Migration
  def change
    create_table :advertises do |t|
      t.datetime :date_origin_advertise
      t.datetime :date_end_advertise
      t.integer :account_id, :null => false
      t.integer :event_id, :null => false

      t.timestamps
    end

    add_index "advertises", ["account_id", "event_id"], name: "index3", using: :btree    
    add_index "advertises", ["account_id", "event_id"], name: "a_e_id_UNIQUE", unique: true, using: :btree 

  end
end

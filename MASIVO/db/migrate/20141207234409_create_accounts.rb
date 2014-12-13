class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :key_user_id, :null => false
      t.string :user_twitter, :null => false
      t.string :user_name, :null => false
      t.integer :type_account, :null => false
      t.integer :data_account_event_id

      t.timestamps
    end

     add_index "accounts", ["data_account_event_id"], name: "DAE_id_UNIQUE", unique: true, using: :btree
     add_index "accounts", ["user_twitter"], name: "user_twitter_UNIQUE", unique: true, using: :btree
     add_index "accounts", ["key_user_id"], name: "key_user_id_UNIQUE", unique: true, using: :btree
     add_index "accounts", ["data_account_event_id"], name: "index1", using: :btree

  end
end

class CreateEvaluationAccountEvents < ActiveRecord::Migration
  def change
    create_table :evaluation_account_events do |t|
      t.integer :num_followers_start
      t.integer :num_followers_end
      t.integer :evaluation_id, :null => false

      t.timestamps
    end

    add_index "evaluation_account_events", ["evaluation_id"], name: "evaluation_id_UNIQUE", unique: true, using: :btree
  	add_index "evaluation_account_events", ["evaluation_id"], name: "index10", using: :btree

  end
end

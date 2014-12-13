class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.datetime :date_start_evaluation
      t.datetime :date_end_evaluation
      t.integer :num_mentions
      t.integer :num_mentions_positive
      t.integer :num_mentions_negative
      t.integer :num_user_active
      t.boolean :evaluation_real_time
      t.integer :review_event_id, :null => false
      t.integer :data_evaluation_real_time_id
      t.integer :evaluation_account_event_id

      t.timestamps
    end

    add_index "evaluations", ["data_evaluation_real_time_id", "evaluation_account_event_id"], name: "index11", using: :btree
    add_index "evaluations", ["data_evaluation_real_time_id"], name: "data_evaluation_real_time_id_UNIQUE", unique: true, using: :btree
    add_index "evaluations", ["evaluation_account_event_id"], name: "evaluation_account_event_id_UNIQUE", unique: true, using: :btree

  end
end

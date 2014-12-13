class CreateDataEvaluationRealTimes < ActiveRecord::Migration
  def change
    create_table :data_evaluation_real_times do |t|
      t.integer :evaluation_id, :null => false

      t.timestamps
    end

    add_index "data_evaluation_real_times", ["evaluation_id"], name: "evaluation_id_UNIQUE", unique: true, using: :btree
    add_index "data_evaluation_real_times", ["evaluation_id"], name: "index8", using: :btree

  end
end

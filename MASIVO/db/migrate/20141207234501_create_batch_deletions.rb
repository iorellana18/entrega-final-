class CreateBatchDeletions < ActiveRecord::Migration
  def change
    create_table :batch_deletions do |t|
      t.integer :num_tweets_delete
      t.datetime :date_until_delete_tweets
      t.integer :num_account_delete
      t.datetime :date_until_delete_account
      t.integer :num_evaluation_delete
      t.datetime :date_delete_evaluation

      t.timestamps
    end
  end
end

class CreateKeyWordsSensitives < ActiveRecord::Migration
  def change
    create_table :key_words_sensitives do |t|
      t.string :word, :null => false
      t.integer :type

      t.timestamps
    end
  end
end

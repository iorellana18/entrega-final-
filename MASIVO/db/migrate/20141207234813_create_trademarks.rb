class CreateTrademarks < ActiveRecord::Migration
  def change
    create_table :trademarks do |t|
      t.string :name_mark
      t.integer :organization_id, :null => false

      t.timestamps
    end

    add_index "trademarks", ["organization_id"], name: "index23", using: :btree
    add_index "trademarks", ["name_mark"], name: "name_mark_UNIQUE", unique: true, using: :btree

  end
end

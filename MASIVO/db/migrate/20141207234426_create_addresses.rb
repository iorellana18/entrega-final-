class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.boolean :national
      t.boolean :headquarters
      t.string :address_all_in, :null => false
      t.integer :organization_id, :null => false

      t.timestamps
    end

    add_index "addresses", ["address_all_in"], name: "address_all_in_UNIQUE", unique: true, using: :btree
    add_index "addresses", ["organization_id"], name: "index2", using: :btree

  end
end

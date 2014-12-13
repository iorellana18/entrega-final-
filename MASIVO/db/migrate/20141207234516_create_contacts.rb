class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :emails_contact
      t.string :country_contact
      t.string :phones_contact
      t.integer :organization_id, :null => false

      t.timestamps
    end

    add_index "contacts", ["organization_id"], name: "index5", using: :btree
    
  end
end

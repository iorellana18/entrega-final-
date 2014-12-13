class CreateEventOrganizations < ActiveRecord::Migration
  def change
    create_table :events_organizations do |t|
      t.belongs_to :event, :null => false
      t.belongs_to :organization, :null => false
      t.timestamps
    end

    add_index "events_organizations", ["event_id","organization_id"], name: "index15", using: :btree
  	add_index "events_organizations", ["event_id","organization_id"], name: "e_o_id_UNIQUE", unique: true, using: :btree

  end
end

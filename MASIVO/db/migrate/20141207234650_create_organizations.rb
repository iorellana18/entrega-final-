class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name_organization, :null => false
      t.string :url_organization

      t.timestamps
    end

    add_index "organizations", ["name_organization"], name: "name_organization_UNIQUE", unique: true, using: :btree
	add_index "organizations", ["url_organization"], name: "url_organization_UNIQUE", unique: true, using: :btree

  end
end

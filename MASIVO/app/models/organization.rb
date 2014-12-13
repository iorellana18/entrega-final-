class Organization < ActiveRecord::Base
	has_one :address
	has_one :contact
	has_many :trademarks
    has_and_belongs_to_many :events #EventOrganization
end

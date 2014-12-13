class EventOrganization < ActiveRecord::Base
#Un event puede ser organizado por mas de una organizacion
	belongs_to :event
	belongs_to :organization
end

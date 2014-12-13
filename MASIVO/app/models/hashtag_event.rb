class HashtagEvent < ActiveRecord::Base
# Un hashtag puede hacer referencia a mas de un evento
	belongs_to :event
	belongs_to :hashtag
end

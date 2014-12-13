class EventTweet < ActiveRecord::Base
#Un tweet puede hacer referencia a mas de un evento
	belongs_to :event
	belongs_to :tweet
end

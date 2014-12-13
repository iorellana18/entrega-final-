class Hashtag < ActiveRecord::Base
	has_and_belongs_to_many :tweets #HashtagTweet 
	has_and_belongs_to_many :events #HashtagEvent
end

class Event < ActiveRecord::Base
   has_many :advertises
   has_one :review_event
   has_many :key_words_event
   has_and_belongs_to_many :organizations #EventOrganization
   has_and_belongs_to_many :hashtags #HashtagEvent
   has_and_belongs_to_many :tweets #EventTweet

   belongs_to :review_event
end

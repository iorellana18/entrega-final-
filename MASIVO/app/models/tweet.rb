class Tweet < ActiveRecord::Base
	has_one :data_tweet_review
    has_and_belongs_to_many :accounts #AccountTweet
    has_and_belongs_to_many :hashtags #HashtagTweet
    has_and_belongs_to_many :events #EventTweet

    belongs_to :account
    belongs_to :data_tweet_review
end

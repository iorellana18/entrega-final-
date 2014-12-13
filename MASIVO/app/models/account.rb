class Account < ActiveRecord::Base
	has_one :data_account_event
    has_many :advertises
    has_many :tweets
    has_and_belongs_to_many :tweets #AccountTweet

	belongs_to :data_account_event 
end

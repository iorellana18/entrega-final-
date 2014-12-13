class ReviewEvent < ActiveRecord::Base
	has_one :event 
	has_one :review_account_event
	has_many :evaluations 

	belongs_to :event
	belongs_to :review_account_event
end

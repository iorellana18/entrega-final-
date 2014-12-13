class ReviewAccountEvent < ActiveRecord::Base
	has_one :review_event

	belongs_to :review_event
end

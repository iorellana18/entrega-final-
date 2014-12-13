class Evaluation < ActiveRecord::Base
	has_one :data_evaluation_real_time
	has_one :evaluation_account_event

	belongs_to :review_event
	belongs_to :data_evaluation_real_time
	belongs_to :evaluation_account_event
end

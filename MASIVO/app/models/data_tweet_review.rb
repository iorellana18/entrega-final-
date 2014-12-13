class DataTweetReview < ActiveRecord::Base
   has_one :tweet
   
   belongs_to :tweet
end

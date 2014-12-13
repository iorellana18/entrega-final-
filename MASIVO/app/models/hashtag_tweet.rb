class HashtagTweet < ActiveRecord::Base
# Un tweet puede contener mas de un hashtag
   belongs_to :hashtag
   belongs_to :tweet
end

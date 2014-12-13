class AccountTweet < ActiveRecord::Base
# Un tweet hace referencia a varias cuentas
   belongs_to :account
   belongs_to :tweet
end

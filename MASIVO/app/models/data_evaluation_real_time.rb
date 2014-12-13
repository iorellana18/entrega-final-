class DataEvaluationRealTime < ActiveRecord::Base
   has_one :evaluation 

   belongs_to :evaluation
end

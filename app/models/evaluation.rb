class Evaluation < ActiveRecord::Base
  belongs_to :skeleton
  has_many :topic_values
end

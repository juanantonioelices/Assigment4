class Skeleton < ActiveRecord::Base
  has_many :topics
  has_many :evaluations
  validates :name, :presence => true
end

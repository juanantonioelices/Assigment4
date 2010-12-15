class Topic < ActiveRecord::Base
  belongs_to :skeleton
  has_many :subtopics
  validates :name, :presence => true
  validates :skeleton_id, :presence => true
end

class Subtopic < ActiveRecord::Base
  belongs_to :topic
  has_many :subsubtopics
  validates :topic_id, :presence => true
  validates :name, :presence => true
end

class Subsubtopic < ActiveRecord::Base
  belongs_to :subtopic
    validates :name, :presence => true
    validates :subtopic_id, :presence => true
end

class CreateSubtopics < ActiveRecord::Migration
  def self.up
    create_table :subtopics do |t|
      t.string :name
      t.string :description
      t.integer :range
      t.integer :topic_id

      t.timestamps
    end
  end

  def self.down
    drop_table :subtopics
  end
end

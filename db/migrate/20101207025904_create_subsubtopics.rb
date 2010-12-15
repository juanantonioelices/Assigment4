class CreateSubsubtopics < ActiveRecord::Migration
  def self.up
    create_table :subsubtopics do |t|
      t.string :name
      t.string :description
      t.integer :range
      t.integer :subtopic_id

      t.timestamps
    end
  end

  def self.down
    drop_table :subsubtopics
  end
end

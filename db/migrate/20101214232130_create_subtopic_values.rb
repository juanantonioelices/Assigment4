class CreateSubtopicValues < ActiveRecord::Migration
  def self.up
    create_table :subtopic_values do |t|
      t.integer :evaluation_id
      t.integer :subtopic_id
      t.integer :value
      t.string :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :subtopic_values
  end
end

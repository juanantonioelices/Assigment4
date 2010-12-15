class CreateTopicValues < ActiveRecord::Migration
  def self.up
    create_table :topic_values do |t|
      t.integer :evaluation_id
      t.integer :topic_id
      t.integer :value
      t.string :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :topic_values
  end
end

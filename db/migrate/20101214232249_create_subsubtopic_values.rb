class CreateSubsubtopicValues < ActiveRecord::Migration
  def self.up
    create_table :subsubtopic_values do |t|
      t.integer :evaluation_id
      t.integer :subsubtopic_id
      t.integer :value
      t.string :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :subsubtopic_values
  end
end

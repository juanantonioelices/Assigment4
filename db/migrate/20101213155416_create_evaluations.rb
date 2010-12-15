class CreateEvaluations < ActiveRecord::Migration
  def self.up
    create_table :evaluations do |t|
      t.integer :member_id
      t.integer :evaluator_id
      t.integer :skeleton_id

      t.timestamps
    end
  end

  def self.down
    drop_table :evaluations
  end
end

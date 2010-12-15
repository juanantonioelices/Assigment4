class CreateSkeletons < ActiveRecord::Migration
  def self.up
    create_table :skeletons do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :skeletons
  end
end

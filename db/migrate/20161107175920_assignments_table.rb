class AssignmentsTable < ActiveRecord::Migration[5.0]
  def up
    create_table :assignments do |t|
      t.boolean :zone_a, :default => false
      t.boolean :zone_b, :default => false
      t.boolean :zone_c, :default => false
      t.boolean :zone_d, :default => false
      t.boolean :zone_1, :default => false
      t.boolean :zone_2, :default => false

      t.timestamps
    end
  end  

  def down
    drop_table :assignments
  end
end

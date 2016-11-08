class AttendeesTable < ActiveRecord::Migration[5.0]
  def up
    create_table :attendees do |t|
      t.string :first_name
      t.string :last_name
      t.string :DOB
      t.string :image
      t.string :organization
      t.string :title

      t.timestamps
    end
  end

  def down
    drop_table :attendees
  end
end

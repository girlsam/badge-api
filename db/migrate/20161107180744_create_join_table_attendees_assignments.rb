class CreateJoinTableAttendeesAssignments < ActiveRecord::Migration[5.0]
  def change
    create_join_table :attendees, :assignments do |t|
      t.index :attendee_id
      t.index :assignment_id
    end
  end
end

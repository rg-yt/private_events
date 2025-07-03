class CreateEventAttendances < ActiveRecord::Migration[8.0]
  def change
    create_table :event_attendances do |t|
      t.integer :attendee_id
      t.integer :event_id
      t.timestamps
    end
    add_foreign_key :event_attendances, :users, column: :attendee_id
    add_foreign_key :event_attendances, :events
  end
end

class EventAttendance < ApplicationRecord
  belongs_to :attendee, class_name: "User", inverse_of: :event_attendances
  belongs_to :event, inverse_of: :event_attendances
end

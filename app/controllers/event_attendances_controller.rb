class EventAttendancesController < ApplicationController
  before_action :authenticate_user!
  def create
    @event = Event.find(params[:event_id])
    @event_attendance = current_user.attended_events << @event
    redirect_to @event
  end
end

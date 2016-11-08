class AttendeesController < ApplicationController

  # Show all attendees
  # GET /attendees
  # GET /attendees.json
  def index
    @attendees = Attendees.all
    render json: @attendees
  end

  # Show an attendees
  # GET attendees/1
  # GET /attendees/1.json
  def show
    @attendee = Attendees.find(params[:id])
    render json: @attendee
  end

end

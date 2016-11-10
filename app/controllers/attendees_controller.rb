class AttendeesController < ApplicationController

  # Show all attendees
  # GET /attendees
  # GET /attendees.json
  def index
    @attendees = Attendees.all
    render json: @attendees
  end

  # Show an attendee
  # GET /attendees/:id
  def show
    @attendee = Attendees.find(params[:id])
    render json: @attendee
  end

  # GET attendees/new
  def new
    @attendee = Attendees.new
    render json: @attendees
  end

  # GET attendee/:id/edit
  def edit
  end

  # POST /attendees
  def create
    @attendee = Attendees.new(attendee_params)

    respond_to do |format|
      if @attendee.save
        msg = {:status => "ok", :message => "Success!" }
        format.json { render :json => msg }
      else
        format.json { render json: @attendee.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_attendee
    @attendee = Attendees.find(params[:id])
  end

  # only allow these parameters through
  def attendee_params
    params.require(:attendee).permit(:first_name, :last_name, :DOB, :image, :organization, :title)

  end

end

class AttendeesController < ApplicationController
  rescue_from Exception, :with => :handle_500

  def handle_500
    render json: { :error => "Error"}, status: 500
  end

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
    render json: @attendee
  end

  # POST /attendees
  def create
    @attendee = Attendees.new(attendee_params)

    respond_to do |format|
      if @attendee.save
        format.json { render json: msg, :status => 201 }
      else
        format.json { render json: @attendee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attendees/:id
  def update
    @attendee = Attendees.find(params[:id])
    @attendee.update_attributes(attendee_params)
    format.json { render json: msg, status => 204 }
  end

  # DELETE /attendees/:id
  def destroy
    @attendee = Attendees.find(params[:id])
    @attendee.destroy
    format.json { render json: msg, :status => 204 }
  end

  private

  # only allow these parameters through
  def attendee_params
    params.permit(:first_name, :last_name, :DOB, :image, :organization, :title)
  end

  # global msg variable
  msg = {:status => "OK", :message => 'Success!' }

end

class AssignmentsController < ApplicationController

  # Show all assignments
  # GET /assignments
  # GET /assignments.json
  def index
    @assignments = Assignments.all
    render json: @assignments
  end

  # Show an assignments
  # GET assignments/1
  # GET /assignments/1.json
  def show
    @assignment = Assignments.find(params[:id])
    render json: @assignment
  end

end

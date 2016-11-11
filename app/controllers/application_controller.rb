class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
  rescue_from ActiveRecord::RecordNotFound, :with => :RecordNotFound

  def record_not_found
    render json: { :error => "Record Not Found"}, status: 404
  end

end

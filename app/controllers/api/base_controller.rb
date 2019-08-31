class Api::BaseController < ActionController::API
  include ActionController::MimeResponds

  def render_errors(status = nil, data = {})
    case status
    when :not_authorized
      render json: data, status: current_user.present? ? 403 : 401
    when :not_found
      render json: data, status: 404
    when :bad_request
      render json: data, status: 400
    else
      render json: data, status: 422
    end
  end
end

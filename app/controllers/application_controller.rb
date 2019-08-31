# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:phone_number, :name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:phone_number, :name])
    devise_parameter_sanitizer.permit(:invite, keys: [:email])
  end
end

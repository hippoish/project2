class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    neighborhood_path(current_user.neighborhood_id)
  end

protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:f_name, :l_name, :neighborhood_id, :has_car, :car_seats])
    devise_parameter_sanitizer.permit(:account_update, keys: [:f_name, :l_name, :neighborhood_id, :has_car, :car_seats])
  end

end

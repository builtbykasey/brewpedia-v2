class ApplicationController < ActionController::Base
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
        user_params.permit(:name, :email, :password, :password_confirmation)
    end
    devise_parameter_sanitizer.permit(:account_update) do |user_params|
        user_params.permit(:name, :email, :password, :password_confirmation, :current_password)
    end
  end

  def user_not_authorized
    flash[:notice] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end

end

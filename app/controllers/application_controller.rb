class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
<<<<<<< HEAD
<<<<<<< HEAD

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me, :name, :age, :provider, :uid]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
=======
  include SessionsHelper
=======
>>>>>>> remote_authauthentication

  before_action :configure_permitted_parameters, if: :devise_controller?

<<<<<<< HEAD
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = t ".log_in."
      redirect_to login_url
    end
>>>>>>> impressionist
=======
  protected

  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
>>>>>>> remote_authauthentication
  end
end

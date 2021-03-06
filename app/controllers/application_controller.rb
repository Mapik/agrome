# encoding: UTF-8
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  include MobsHelper
  include WarehousesHelper
  include BuildingsHelper
  include MachinesHelper
  include FieldsHelper
  include TasksHelper

  private

    # Before filters

    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:alert] = "Zaloguj się."
        redirect_to login_url
      end
    end


end

# encoding: UTF-8
class PasswordResetsController < ApplicationController
  before_action :get_user, only: [:edit, :update]
  
  def new
  end

  def create
    @user = User.find_by(email: params[:password_reset][:email].downcase)
    if @user
      @user.create_reset_digest
      @user.send_password_reset_email
      flash[:success] = "Na adres email został wysłany mail z instrukcjami"
      redirect_to root_url
    else
      flash.now[:alert] = "Adres email nie został znaleziony"
      render 'new'
    end
  end

  def edit
  end

  def update
    if @user.password_reset_expired?
      flash[:alert] = "Link do resetowania hasła stracił ważność."
      redirect_to new_password_reset_path
    elsif @user.update_attributes(user_params)
      if (params[:user][:password].blank? &&
          params[:user][:password_confirmation].blank?)
        flash.now[:alert] = "Hasło lub potwierdzenie nie może być puste"
        render 'edit'
      else
        flash[:success] = "Hasło zostało zresetowane."
        log_in @user
        redirect_to root_url
      end
    else
      render 'edit'
    end
  end

  private

    def user_params
      params.require(:user).permit(:password, :password_confirmation)
    end

    def get_user
      @user = User.find_by(email: params[:email])
      unless @user && @user.authenticated?(:reset, params[:id])
        redirect_to root_url
      end
    end

end

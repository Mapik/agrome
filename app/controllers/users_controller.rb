# encoding: UTF-8
class UsersController < ApplicationController
  
  before_action :logged_in_user, only: [:index, :edit, :update, :show, :destroy]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy

  

  def index
    #@farmers = User.where(user_type_id: '1').page params[:farmers]
    #@skupnicy = User.where(user_type_id: '2').page params[:skupnicy]

    @search_farmers = User.where(user_type_id: '1').search(params[:q])
    @found_farmers = @search_farmers.result
    @farmers = @found_farmers.page params[:farmers]

    @search_skupnicy = User.where(user_type_id: '2').search(params[:q])
    @found_skupnicy = @search_skupnicy.result
    @skupnicy = @found_skupnicy.page params[:skupnicy]
  end

	def show
		@user = User.find(params[:id])
    #@fields = @user.fields.all - przyda się przy robienu czynności
	end

	def new
		@user = User.new
	end


	def create
		@user = User.new(user_params)
		if @user.save
			log_in @user
			remember @user
			flash[:success] = "Witamy w AGROME!"
			redirect_to @user
		else
			render 'new'
		end
	end

	def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
		if @user.update_attributes(user_params)
      flash[:success] = "Profil zaktualizowany"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    #flash[:success] = "User deleted"
    redirect_to users_url
  end

		private

			def user_params
				params.require(:user).permit(:name, :email, :zipcode, :password,
				:password_confirmation, :user_type_id)
			end

      # Before filters

      # Confirms the correct user.
      def correct_user
        @user = User.find(params[:id])
        redirect_to(root_url) unless current_user?(@user)
      end

      # Confirms an admin user.
      def admin_user
        redirect_to(root_url) unless current_user.admin?
      end

      

end

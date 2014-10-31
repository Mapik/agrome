class MobsController < ApplicationController
  before_action :logged_in_user, only: [:index, :create, :show, :update]
  before_action :correct_user, only:[:show]

  def index
    @mob = current_user.mobs.build
  end


  def create
    @mob = current_user.mobs.build(mobs_params)
    if @mob.save
      #flash[:success] = "Pole zostało dodane."
      redirect_to @mob
    else
      render 'index'
    end
  end

  def show
    mob = Mob.find_by(id: params[:id])
    remember_mob mob
    @mob = current_mob
    @mob_type = mob_type
    @submobs_list = submobs_list
    @submob = current_mob.submobs.build
  end

  def update
    @mob = current_mob
    if @mob.update_attributes(mobs_params)
      #flash[:success] = "Profil zaktualizowany"
      if @mob.archive == 0
        redirect_to @mob
      else
        redirect_to mobs_path
      end
    else
      render 'show'
    end
  end

  private

      def mobs_params
        params.require(:mob).permit(:name, :mobtype_id, :creation_date, :breed, 
          :archive)
      end

      # Confirms the correct user.
      def correct_user
        @mob = Mob.find_by(id: params[:id])
        @user = @mob.user
        redirect_to(mobs_path) unless current_user?(@user)
      end  


end

class BuildingsController < ApplicationController

  before_action :logged_in_user, only: [:index, :create, :show, :update]
  before_action :correct_user, only:[:show, :update]

  def index
    @building = current_user.buildings.build
  end


  def create
    @building = current_user.buildings.build(buildings_params)
    if @building.save
      redirect_to @building
    else
      render 'index'
    end
  end

  def show
    building = Building.find_by(id: params[:id])
    remember_building building
    @building = current_building
  end

  def update
    @building = current_building
    if @building.update_attributes(buildings_params)
      if @building.archive == 0
        redirect_to @building
      else
        redirect_to buildings_path
      end
    else
      render 'show'
    end
  end

  private

      def buildings_params
        params.require(:building).permit(:buildingtype_id, :name, :build_date, 
          :area, :archive)
      end

      # Confirms the correct user.
      def correct_user
        @building = Building.find_by(id: params[:id])
        @user = @building.user
        redirect_to(buildings_path) unless current_user?(@user)
      end  

end

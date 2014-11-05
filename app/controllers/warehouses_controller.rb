class WarehousesController < ApplicationController

  before_action :logged_in_user, only: [:index, :create, :show, :update]
  before_action :correct_user, only:[:show]

  def index
    @warehouse = current_user.warehouses.build
  end


  def create
    @warehouse = current_user.warehouses.build(warehouses_params)
    if @warehouse.save
      redirect_to @warehouse
    else
      render 'index'
    end
  end

  def show
    warehouse = Warehouse.find_by(id: params[:id])
    remember_warehouse warehouse
    @warehouse = current_warehouse
  end

  def update
    @warehouse = current_warehouse
    if @warehouse.update_attributes(warehouses_params)
      if @warehouse.archive == 0
        redirect_to @warehouse
      else
        redirect_to warehouses_path
      end
    else
      render 'show'
    end
  end

  private

      def warehouses_params
        params.require(:warehouse).permit(:name, :volume, :volumeunit_id, :archive)
      end

      # Confirms the correct user.
      def correct_user
        @warehouse = Warehouse.find_by(id: params[:id])
        @user = @warehouse.user
        redirect_to(warehouses_path) unless current_user?(@user)
      end  

end

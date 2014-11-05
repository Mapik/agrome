class MachinesController < ApplicationController
  before_action :logged_in_user, only: [:index, :create, :show, :update]
  before_action :correct_user, only:[:show]

  def index
    @machine = current_user.machines.build
  end


  def create
    @machine = current_user.machines.build(machines_params)
    if @machine.save
      redirect_to @machine
    else
      render 'index'
    end
  end

  def show
    machine = Machine.find_by(id: params[:id])
    remember_machine machine
    @machine = current_machine
  end

  def update
    @machine = current_machine
    if @machine.update_attributes(machines_params)
      if @machine.archive == 0
        redirect_to @machine
      else
        redirect_to machines_path
      end
    else
      render 'show'
    end
  end

  private

      def machines_params
        params.require(:machine).permit(:name, :production_date, 
          :manufacturer_name, :model_name, :buy_date, :archive, :machinetype_id)
      end

      # Confirms the correct user.
      def correct_user
        @machine = Machine.find_by(id: params[:id])
        @user = @machine.user
        redirect_to(machines_path) unless current_user?(@user)
      end  

end

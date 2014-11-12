class CultivationsController < ApplicationController
  before_action :logged_in_user, only: [:index, :create, :show, :update]
  
  def create
    @cultivation = Cultivation.new(cultivation_params)
    if @cultivation.save
      redirect_to current_field
    else
      redirect_to current_field
    end
  end

  private

      def cultivation_params
        params.require(:cultivation).permit(:croptype_id, :name, :croparea, :season_id, :unitsymbol, :variety)
      end

end

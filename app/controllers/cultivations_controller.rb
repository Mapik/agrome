class CultivationsController < ApplicationController

  def create
    @cultivation = Cultivation.new(cultivation_params)
    if @cultivation.save
      #flash[:success] = "Pole zostało dodane."
      redirect_to current_field
    else
      #@fields = current_user.fields.where(archive: '0') #przeniesione do seesion_helper
      redirect_to root_url
    end
  end

  private

      def cultivation_params
        params.require(:cultivation).permit(:croptype_id, :name, :croparea, :season_id, :unitsymbol)
      end

end

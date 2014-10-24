class SeasonsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]



  def create
    @season = current_field.seasons.build(season_params)
    if @season.save
      redirect_to current_field
    else
      render 'new'
    end
  end

  
    private

      def season_params
        params.require(:season).permit(:seasonlist_id,:season_name)
      end
      

end

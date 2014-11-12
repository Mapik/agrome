class SubmobsController < ApplicationController
  before_action :logged_in_user, only: [:index, :create, :show, :update]
  
  def create
    @submob = current_mob.submobs.build(submob_params)
    if @submob.save
      redirect_to current_mob
    else
      redirect_to current_mob
    end
  end

  private

      def submob_params
        params.require(:submob).permit(:mob_id, :name, :quantity, :creation_date, 
          :archive, :breed)
      end

end

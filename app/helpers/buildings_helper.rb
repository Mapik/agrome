module BuildingsHelper

  #Remember building
    def remember_building (building)
      session[:building_id] = building.id
    end

  #Define current building
    def current_building
        @current_building = Building.find_by(id: session[:building_id])
    end

  #Find building Type
    def building_type(building)
      @building_type = Buildingtype.where(id: building.buildingtype_id).first
    end

  #Returns user active buildings
    def user_active_buildings
      @user_active_buildings ||= current_user.buildings.where(archive: '0')
    end



end

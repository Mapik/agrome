module EquipmentsHelper

  #Remember equipment
    def remember_equipment (equipment)
      session[:equipment_id] = equipment.id
    end

  #Define current equipment
    def current_equipment
        @current_equipment = Equipment.find_by(id: session[:equipment_id])
    end

  #Returns user active equipments
    def user_active_equipments
      @user_active_equipments ||= current_user.equipment.where(archive: '0')
    end

  #Return warehouse volume
    def equipment_type (equipment)
      @equipment_type = Equipmenttype.where(id: equipment.equipmenttype_id).first
    end


end

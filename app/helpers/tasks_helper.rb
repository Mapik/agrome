module TasksHelper

  def selected_sublist 
    case @selected_object
    when '1' #Field
      @selected_subobjects = user_active_fields
    when '2' #Mob
      @selected_subobjects = user_active_mobs
    when '3' #Machine
      @selected_subobjects = user_active_machines
    when '4' #Building
      @selected_subobjects = user_active_buildings
    when '5' #Warehouse
      @selected_subobjects = user_active_warehouses
    end

  end


end

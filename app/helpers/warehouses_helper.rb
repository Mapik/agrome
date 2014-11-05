module WarehousesHelper

  #Remember warehouse
    def remember_warehouse (warehouse)
      session[:warehouse_id] = warehouse.id
    end

  #Define current warehouse
    def current_warehouse
        @current_warehouse = Warehouse.find_by(id: session[:warehouse_id])
    end

  #Returns user active warehouses
    def user_active_warehouses
      @user_active_warehouses ||= current_user.warehouses.where(archive: '0')
    end

  #Return warehouse volume
    def warehouse_volume_unit (warehouse)
      @warehouse_volume_unit = Volumeunit.where(id: warehouse.volumeunit_id).first
    end

end

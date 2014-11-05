module MachinesHelper

  #Remember machine
    def remember_machine (machine)
      session[:machine_id] = machine.id
    end

  #Define current machine
    def current_machine
        @current_machine = Machine.find_by(id: session[:machine_id])
    end

  #Find machine Type
    def machine_type(machine)
      @machine_type = Machinetype.where(id: machine.machinetype_id).first
    end

  #Returns user active machines
    def user_active_machines
      @user_active_machines ||= current_user.machines.where(archive: '0')
    end


end

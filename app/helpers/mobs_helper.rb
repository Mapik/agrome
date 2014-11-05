module MobsHelper

  #Remember mob
    def remember_mob (mob)
      session[:mob_id] = mob.id
    end

  #Define current mob
    def current_mob
        @current_mob = Mob.find_by(id: session[:mob_id])
    end

  #Find Mob Type
    def mob_type
      @mob_type = Mobtype.where(id: @current_mob.mobtype_id).first
    end

  #Find submobs
    def submobs_list
      @submobs_list = current_mob.submobs.all
    end

  #Returns user active mobs
    def user_active_mobs
      @user_active_mobs ||= current_user.mobs.where(archive: '0')
    end

end

module FieldsHelper
  
  #Remeber last field
    def remember_field(field)
      session[:field_id] = field.id
    end

  #Returns the current field
    def current_field
      @current_field = Field.find_by(id: session[:field_id])
    end

  #Returns active fields
    def user_active_fields
      @user_active_fields ||= current_user.fields.where(archive: '0')
    end



end

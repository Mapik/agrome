class TasksController < ApplicationController
  def new
    @task = current_user.tasks.build
  end

  def index
    @task = current_user.tasks.build
    @tasks = Task.all
    @one_field = Field.first
  end

  def show
  end

  def edit
  end

  def create
    @task = current_user.tasks.build(tasks_params)
    @task.save
    #redirect_to tasks_path
    respond_to do |format|
      format.html { redirect_to tasks_path }
      format.js
      @tasks = Task.all
    end

  end

  def select_object
    @selected_object = params["ObjectName"]
    selected_sublist 
    respond_to do |format|
      format.html { redirect_to tasks_path }
      format.js
    end
  end

  def object_selected
    @machine = 'machine'
  end

  def selected_field
    @selected_subobject = Field.find_by(id: params["FieldId"])
    @seasons_to_select = @selected_subobject.seasons.all
    #@cultivations_to_select = @seasons_to_select.cultivations.all
    respond_to do |format|
      format.html { redirect_to tasks_path }
      format.js
    end
  end

  def selected_mob
    @selected_subobject = Mob.find_by(id: params["MobId"])
    @submobs_to_select = @selected_subobject.submobs.all
    respond_to do |format|
      format.html { redirect_to tasks_path }
      format.js
    end
  end

  def selected_machine
    @selected_subobject = Machine.find_by(id: params["MacineId"])
    @task = current_user.tasks.build
    respond_to do |format|
      format.html { redirect_to tasks_path }
      format.js
    end
  end

  def selected_building
    @selected_subobject = Building.find_by(id: params["BuildingId"])
    @task = current_user.tasks.build
    respond_to do |format|
      format.html { redirect_to tasks_path }
      format.js
    end
  end

  def selected_warehouse
    @selected_subobject = Warehouse.find_by(id: params["WarehouseId"])
    @task = current_user.tasks.build
    respond_to do |format|
      format.html { redirect_to tasks_path }
      format.js
    end
  end

  def selected_cultivation
    @selected_subobject = Cultivation.find_by(id: params["CultivationsId"])
    @task = current_user.tasks.build
    respond_to do |format|
      format.html { redirect_to tasks_path }
      format.js
    end
  end

  def selected_submob
    @selected_subobject = Submob.find_by(id: params["SubmobsId"])
    @task = current_user.tasks.build
    respond_to do |format|
      format.html { redirect_to tasks_path }
      format.js
    end
  end

  private

      def tasks_params
        params.require(:task).permit(:task_type_id, :cultivation_id, :submob_id, 
          :machine_id, :building_id, :warehouse_id, :is_done, :is_for_cultivation, 
          :is_for_mob, :is_for_machine, :is_for_building, :is_for_warehouse, 
          :is_for_offer, :is_for_groupdeal, :operation_date, :operation_costs, 
          :comment, :leasing_time, :leasing_instalment, :lessor, :stock_type,
          :quantity, :unit_price, :volumeunit_id, :stock_source, :repaired_element,
          :buyer_name, :meter_price, :used_for, :seller_name, :payment_form,
          :Reason, :vet_name, :medicine_cost, :vet_cost, :medicine,
          :medicine_dose, :treatment_duration, :activity_duration,
          :machine_hours, :fuel_consumption, :is_service,
          :service_per_hour_cost, :service_provider, :weather_comment, 
          :fertilizer, :fertilizer_name, :fertilizer_dose, 
          :spraying_type, :spraying_name, :spraying_dose, :croptype_id, 
          :stock_name)
      end

end

class ChangeColumnTypesAgain < ActiveRecord::Migration
  def change
    change_column :tasks, :leasing_time, :string
    change_column :tasks, :leasing_instalment, :string
    change_column :tasks, :lessor, :string
    change_column :tasks, :stock_type, :string
    change_column :tasks, :quantity, :string
    change_column :tasks, :unit_price, :string
    change_column :tasks, :volumeunit_id, :string
    change_column :tasks, :stock_source, :string
    change_column :tasks, :repaired_element, :string
    change_column :tasks, :buyer_name, :string
    change_column :tasks, :meter_price, :string
    change_column :tasks, :used_for, :string
    change_column :tasks, :seller_name, :string
    change_column :tasks, :payment_form, :string
    change_column :tasks, :Reason, :string
    change_column :tasks, :vet_name, :string
    change_column :tasks, :medicine_cost, :string
    change_column :tasks, :vet_cost, :string
    change_column :tasks, :medicine, :string
    change_column :tasks, :medicine_dose, :string
    change_column :tasks, :treatment_duration, :string
    change_column :tasks, :activity_duration, :string
    change_column :tasks, :machine_hours, :string
    change_column :tasks, :fuel_consumption, :string
    change_column :tasks, :is_service, :string
    change_column :tasks, :service_per_hour_cost, :string
    change_column :tasks, :service_provider, :string
    change_column :tasks, :weather_comment, :string
    change_column :tasks, :fertilizer, :string
    change_column :tasks, :fertilizer_name, :string
    change_column :tasks, :fertilizer_dose, :string
    change_column :tasks, :spraying_type, :string
    change_column :tasks, :spraying_name, :string
    change_column :tasks, :spraying_dose, :string
    change_column :tasks, :croptype_id, :string

  end
end

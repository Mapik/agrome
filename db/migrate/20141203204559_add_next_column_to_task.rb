class AddNextColumnToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :leasing_time, :integer
    add_column :tasks, :leasing_instalment, :float
    add_column :tasks, :lessor, :string
    add_column :tasks, :stock_type, :integer
    add_column :tasks, :quantity, :float
    add_column :tasks, :unit_price, :float
    add_column :tasks, :stock_source, :integer
    add_column :tasks, :repaired_element, :string
    add_column :tasks, :buyer_name, :string
    add_column :tasks, :meter_price, :float
    add_reference :tasks, :volumeunit, index: true
    add_column :tasks, :used_for, :string
    add_column :tasks, :seller_name, :string
    add_column :tasks, :payment_form, :integer
    add_column :tasks, :Reason, :string
    add_column :tasks, :vet_name, :string
    add_column :tasks, :medicine_cost, :float
    add_column :tasks, :vet_cost, :float
    add_column :tasks, :medicine, :string
    add_column :tasks, :medicine_dose, :float
    add_column :tasks, :treatment_duration, :float
    add_column :tasks, :activity_duration, :float
    add_column :tasks, :fuel_consumption, :float
    add_column :tasks, :is_service, :integer
    add_column :tasks, :service_per_hour_cost, :float
    add_column :tasks, :service_provider, :string
    add_column :tasks, :weather_comment, :string
    add_column :tasks, :fertilizer, :string
    add_column :tasks, :fertilizer_name, :string
    add_column :tasks, :fertilizer_dose, :float
    add_column :tasks, :machine_hours, :float
    add_column :tasks, :spraying_type, :integer
    add_column :tasks, :spraying_name, :string
    add_column :tasks, :spraying_dose, :float
    add_reference :tasks, :croptype, index: true
  end
end

class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.datetime :appointment_date
      t.integer :physician_id, index: true
      t.integer :patient_id, index: true
      t.timestamps
      
    end
    add_foreign_key :appointments, :physicians, on_delete: :cascade
    add_foreign_key :appointments, :patients, on_delete: :cascade
  end
end
